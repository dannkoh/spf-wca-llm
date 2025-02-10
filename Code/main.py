import glob
import json
import os
import subprocess
import argparse

from dotenv import load_dotenv
from LLMHelper import huggingface, openai


class ConversationHandler:
    """
    A class to handle printing and saving conversation messages.
    """

    def __init__(self):
        """
        Initialize the conversation handler.
        """
        self.conversation = []
        self.temp = []

    def print_and_save(self, new_message):
        """
        Print and save a new message in the conversation.

        Args:
            new_message (str): The message to print and save.
        """
        if self.temp:
            self.push()
        print("\n" + "#" * 60)
        print(new_message)
        self.conversation.append("\n" + "#" * 60 + "\n")
        self.conversation.append(new_message)

    def load(self, message):
        """
        Add a message to the conversation into the conversation list.

        Args:
            message (str): The message to add to the conversation.
        """
        print("\n" + message + "\n")
        self.temp.append("\n" + message + "\n")

    def push(self):
        """
        Add the temporary conversation to the main conversation.
        """
        self.conversation.extend(self.temp)
        self.temp = []

    def __getconvesation__(self):
        """
        Return the conversation.
        """
        if self.temp:
            self.push()
        return self.conversation


class Experiment:
    """
    A class to run the experiment using provided directories and prompts.
    """

    def __init__(
        self,
        directories,
        prompts,
        llm_helper,
        resultsFolder=None,
        max_examples=30,
        max_shown_examples=10,
        max_attempts=10,
    ):
        """
        Initialize the experiment with the given parameters.

        Args:
            directories (list): List of directory paths containing SMT files.
            prompts (dict): Dictionary of prompt templates.
            llm_helper (object): Initialized LLM helper (OpenAIHelper or HuggingFaceHelper).
            resultsFolder (str): Path to the results folder.
            max_examples (int): Number of examples to process. Defaults to 30.
            max_shown_examples (int): Number of examples shown to the LLM. Defaults to 10.
            max_attempts (int): Maximum number of generalization attempts. Defaults to 10.
        """
        if resultsFolder is None:
            raise ValueError("resultsFolder is required")

        # Create results directory structure
        self.max_file_size = 2_000_000_000  # 2GB
        self.results_dir = resultsFolder
        self.logs_dir = os.path.join(self.results_dir, "logs")
        self.stats_dir = os.path.join(self.results_dir, "stats")
        self.generals = os.path.join(self.results_dir, "generals")

        # Create necessary directories
        for directory in [
            self.results_dir,
            self.logs_dir,
            self.stats_dir,
            self.generals,
        ]:
            os.makedirs(directory, exist_ok=True)

        self.directories = directories
        self.prompts = prompts
        self.llm_helper = llm_helper
        self.max_examples = max_examples
        self.max_shown_examples = max_shown_examples
        self.max_attempts = max_attempts
        self.experiment_stats = {}

    def run(self):
        """
        Run the experiment by processing each directory.
        """
        for directory_path in self.directories:
            self.process_directory(directory_path=directory_path)

    def process_directory(self, directory_path):
        """
        Process a single directory containing SMT files.

        Args:
            directory_path (str): The path to the directory containing SMT files.
        """
        problem_name = os.path.basename(
            os.path.dirname(os.path.dirname(directory_path))
        )
        java_file_name = problem_name + ".java"
        source_filepath = os.path.join("../Dataset/java_programs/own/", java_file_name)
        self.process_file(
            directory_path=directory_path,
            source_filepath=source_filepath,
            problem_name=problem_name,
        )

    def process_file(self, directory_path, source_filepath, problem_name):
        """
        Process a single directory and perform the generalization.

        Args:
            directory_path (str): The path to the directory containing SMT files.
            source_filepath (str): The path to the source Java file.
        """
        self.conversation_handler = ConversationHandler()
        llm_history = [{"role": "system", "content": self.prompts["get_gen_sys"]}]

        # Get constraints from SMT files
        constraints = self.get_constraints_from_smt_files(directory_path)

        # Get the source code
        source = self.get_source_file(filepath=source_filepath)

        # Generate initial prompt
        prompt_get_gen = self.generate_initial_prompt(
            constraints=constraints, source_code=source
        )
        self.conversation_handler.print_and_save(prompt_get_gen)

        # Update conversation history
        llm_history.append({"role": "user", "content": prompt_get_gen})

        # Get the LLM response
        response_get_gen = self.llm_helper.get_response(history=llm_history)
        content_get_gen = response_get_gen.choices[0].message.content
        self.conversation_handler.print_and_save(content_get_gen)
        llm_history.append({"role": "assistant", "content": content_get_gen})

        # Extract generalization
        generalisation = self.extract_generalisation(content_get_gen, llm_history)
        if generalisation is None:
            self.conversation_handler.print_and_save(
                " " * 20 + "Failed to extract generalisation."
            )
            return  # Early exit if extraction fails

        # Evaluate and update generalization
        success, attempts = self.evaluate_and_update_generalisation(
            constraints=constraints,
            generalisation=generalisation,
            llm_history=llm_history,
            directory_path=directory_path,
            problem_name=problem_name,
        )

        self.update_individual_stats(
            problem_name=problem_name,
            success=success,
            attempts=attempts,
        )

        self.save_logs(problem_name=problem_name)

    def get_source_file(self, filepath):
        """
        Get the source code from the file.

        Args:
            filepath (str): The path to the file.

        Returns:
            str: The source code.
        """
        with open(filepath, "r") as file:
            source = file.read()

        if filepath.endswith(".py"):
            language = "python"
        elif filepath.endswith(".java"):
            language = "java"
        elif filepath.endswith(".c"):
            language = "c"
        elif filepath.endswith(".cpp"):
            language = "cpp"
        else:
            raise ValueError("Unsupported language")
        source_file = f"\n```{language}\n{source}\n```\n"
        return source_file

    def get_constraints_from_smt_files(self, dir_path):
        """
        Extract constraints from the SMT files.

        Args:
            dir_path (str): The path to the directory containing SMT files.

        Returns:
            dict: A dictionary of constraints extracted from the SMT files.
        """
        constraints = {}
        try:
            fileName = dir_path.split("spf_output/")[1].split("/")[0]
        except IndexError:
            fileName = dir_path.rsplit("/", 1)[-1]
        smt_files = glob.glob(f"{dir_path}/own.{fileName}_*.smt2")
        for smt_file in smt_files:
            n_str = smt_file.split(f"own.{fileName}_")[-1].split(".smt2")[0]
            n = int(n_str)
            with open(smt_file, "r") as file:
                smt_lines = [line.strip() for line in file if line.strip()]
                constants = [
                    line for line in smt_lines if line.startswith("(declare-const")
                ]
                assertions = [line for line in smt_lines if line.startswith("(assert")]
                constraints[n] = {
                    "constants": constants,
                    "assertions": assertions,
                }
        # Ensure all indices up to max_examples are included
        for n in range(1, self.max_examples + 1):
            if n not in constraints:
                constraints[n] = {"constants": [], "assertions": []}
        return constraints

    def generate_initial_prompt(self, constraints, source_code):
        """
        Generate the initial prompt for generalization.

        Args:
            constraints (dict): Dictionary of constraints.
            source_code (str): The source code.

        Returns:
            str: The generated prompt.
        """
        prompt_get_gen = self.prompts["get_gen_start"]

        for example_id in range(1, self.max_shown_examples + 1):
            constraint = constraints.get(example_id)
            prompt_get_gen += f"\n\nThe constraints for input (N={example_id}):\n"
            assertions = constraint.get("assertions", [])
            prompt_get_gen += (
                f"\n{''.join(map(str, assertions))}\n" if assertions else "\nNone\n"
            )

        prompt_get_gen += "\n\nHere is more context for you to generalize the constraints better. Below is the source code for the SPF problem:\n"
        prompt_get_gen += source_code
        prompt_get_gen += self.prompts["get_gen_end"]
        prompt_get_gen += self.prompts["get_gen_end1"]
        prompt_get_gen += self.prompts["get_gen_end2"]
        with open("python_code_template.py", "r") as file:
            template_code = file.read()
        prompt_get_gen += template_code
        prompt_get_gen += self.prompts["get_gen_example"]
        return prompt_get_gen

    def validPython(generalisation):
        """Check if generalization is valid and follows expected format."""
        try:
            # Create namespace with mocked input
            namespace = {"input": lambda _: "1"}

            # Compile and execute code
            exec(compile(generalisation, "<string>", "exec"), namespace)

            # Check if function exists
            if "generate_constraints" not in namespace:
                return False
            
            if """N = int(input("N="))\nconstraints = generate_constraints(N)\nprint(constraints)""" not in generalisation:
                print("Missing the final part of the code")
                return False

            # Test function call
            result = namespace["generate_constraints"](1)

            # Verify return type and non-empty
            return isinstance(result, str) 
        except Exception:
            return False

    def extract_generalisation(self, content_get_gen, llm_history, depth=0, max_depth=3):
        """
        Extract the generalization code from the LLM's response.

        Args:
            content_get_gen (str): The content from the LLM's response.
            llm_history (list): The LLM conversation history.
            depth (int): Current recursive depth.
            max_depth (int): Maximum allowed recursion depth.

        Returns:
            str: The extracted generalization code, or None if extraction fails.
        """
        if depth >= max_depth:
            return None

        def build_correction_prompt():
            correction_prompt = (
                self.prompts["get_gen_format"]
                + self.prompts["get_gen_format2"]
                + self.prompts["get_gen_format3"]
                + self.prompts["get_gen_end1"]
            )
            with open("python_code_template.py", "r") as file:
                correction_prompt += file.read()
            correction_prompt += self.prompts["get_gen_end2"]
            return correction_prompt

        def extract_code(text):
            # Assume the text after "FORMAL" contains the code and remove leading punctuation/whitespace.
            code_segment = text.split("FORMAL", 1)[1].lstrip(":\n ").strip()
            if "```python" in code_segment:
                return code_segment.split("```python", 1)[1].split("```", 1)[0].strip()
            elif "```" in code_segment:
                return code_segment.split("```", 1)[1].split("```", 1)[0].strip()
            return code_segment.strip()

        # Attempt to extract code if a "FORMAL" section is present.
        if "FORMAL" in content_get_gen:
            generalisation = extract_code(content_get_gen)
        else:
            generalisation = ""

        is_valid = (
            "def generate_constraints(N: int) -> str:" in generalisation
            and Experiment.validPython(generalisation)
        )

        if not is_valid:
            self.conversation_handler.load("Failed to extract generalisation.")
            self.conversation_handler.load(
                f"def generate_constraints(N: int) -> str: found: {'Yes' if 'def generate_constraints(N: int) -> str:' in generalisation else 'No'}"
            )
            self.conversation_handler.load(f"Valid Python: {Experiment.validPython(generalisation)}")
            correction_prompt = build_correction_prompt()
            llm_history.append({"role": "user", "content": correction_prompt})

            response = self.llm_helper.get_response(history=llm_history)
            new_content = response.choices[0].message.content
            self.conversation_handler.print_and_save(new_content)
            llm_history.append({"role": "assistant", "content": new_content})
            return self.extract_generalisation(new_content, llm_history, depth=depth + 1, max_depth=max_depth)

        return generalisation


    def evaluate_and_update_generalisation(
        self, constraints, generalisation, llm_history, directory_path, problem_name
    ):
        """
        Evaluate and update the generalization by checking logical equivalence.

        Args:
            constraints (dict): The original constraints from SPF.
            generalisation (str): The generalization code from the LLM.
            llm_history (list): The conversation history.
            directory_path (str): The directory path containing SMT files.
            problem_name (str): The name of the problem.
        """
        for attempt_id in range(self.max_attempts):
            self.conversation_handler.print_and_save(
                f"{' ' * 20} ATTEMPT {attempt_id + 1}"
            )

            # Save the generalization code to a file
            generalisation_folder = os.path.join(self.generals, problem_name)
            os.makedirs(generalisation_folder, exist_ok=True)
            generalisation_file = os.path.join(
                generalisation_folder, f"{problem_name}.py"
            )
            with open(generalisation_file, "w") as file:
                file.write(generalisation)

            success = {}
            for N in range(1, self.max_examples + 1):
                # Paths to the original and instantiated constraint files
                instantiated_constraints = self.instantiate_generalisation(
                    generalisation_file, N
                )
                if len(instantiated_constraints.encode("utf-8")) > self.max_file_size:
                    self.conversation_handler.print_and_save(
                        f"{' ' * 20}Constraints for N={N} too large (SIZE:{len(instantiated_constraints.encode('utf-8'))/1000000000}), aborting."
                    )
                    break
                self.conversation_handler.print_and_save(
                    f"{' ' * 20} Checking Equivalence for N={N}"
                )
                # Perform SMT equivalence checks
                equivalent = self.check_logical_equivalence(
                    problem_name=problem_name,
                    N=N,
                    original_assertions=constraints[N],
                    generated_assertions=instantiated_constraints,
                )
                self.conversation_handler.load(
                    f"{' ' * 20}N={N}: {'Equivalent' if equivalent['result'] else 'Not Equivalent'}"
                )
                success[N] = {
                    "expected": constraints[N],
                    "predicted": instantiated_constraints,
                    "equivalent": False if not equivalent["result"] else True,
                    "reason": equivalent["reason"],
                }
            if all(success[N]["equivalent"] for N in range(1, self.max_examples + 1)):
                self.conversation_handler.load(
                    "Generalization verified successfully for all examples."
                )
                return success, attempt_id + 1
            elif all(
                success[N]["equivalent"] for N in range(1, self.max_shown_examples + 1)
            ):
                # Add feedback about validation failure without revealing details
                self.conversation_handler.load(
                    "Solution works for the training examples but fails to generalize properly."
                )
                feedback_prompt = "Your generalization passed the initial examples but failed to scale to larger values of N. Please revise your solution to be more general."
                self.conversation_handler.print_and_save(feedback_prompt)
                llm_history.append({"role": "user", "content": feedback_prompt})
            elif attempt_id == self.max_attempts - 1:
                self.conversation_handler.load("Failed to generalize constraints.")
                return success, self.max_attempts
            else:
                self.conversation_handler.load(
                    f"{ '#' * 20 } Retrying Generalisation { '#' * 20 }"
                )
                # Provide feedback to the LLM and get a new generalization
                feedback_prompt = self.generate_feedback_prompt(results=success)
                self.conversation_handler.print_and_save(feedback_prompt)
                llm_history.append({"role": "user", "content": feedback_prompt})
                response_get_gen = self.llm_helper.get_response(history=llm_history)
                print("response_get_gen", response_get_gen)
                content_get_gen = response_get_gen.choices[0].message.content
                self.conversation_handler.print_and_save(content_get_gen)
                llm_history.append({"role": "assistant", "content": content_get_gen})

                generalisation = self.extract_generalisation(
                    content_get_gen, llm_history
                )
                if generalisation is None:
                    self.conversation_handler.print_and_save(
                        "Failed to extract generalisation."
                    )
                    break
        return success, self.max_attempts

    def generate_feedback_prompt(self, results):
        """
        Generate a feedback prompt for the LLM based on failed N.

        Args:
            results (dict): Dictionary of results for each N.

        Returns:
            str: The feedback prompt.
        """
        feedback_prompt = self.prompts["get_gen_feedback"]
        for N in range(1, self.max_shown_examples + 1):
            feedback_prompt += f"\n\nFor N={N}: "
            if results[N]["equivalent"]:
                feedback_prompt += "the generalisation is correct.\n"
            else:
                max_length = (
                    int(
                        len("".join(map(str, results[N]["expected"]["assertions"])))
                        * 1.5
                    )
                    if results[N]["expected"]["assertions"]
                    else 100
                )
                feedback_prompt += "The correct constraints are:\n"
                feedback_prompt += f"\n{''.join(map(str, results[N]['expected']['assertions'])) if results[N]['expected']['assertions'] else 'None'}\n"
                feedback_prompt += "\nYour generalisation implies the set:\n"
                feedback_prompt += f"\n{results[N]['predicted'][:max_length]}"
                feedback_prompt += f"\n{'... (Shortened because it is wrong.)' if len(results[N]['predicted']) > max_length else ''}\n"
                feedback_prompt += "\nThis is not correct. \n"
                # feedback_prompt += f"\n{results[N]['reason']}\n"
        return feedback_prompt

    def instantiate_generalisation(self, generalisation_file, N):
        """
        Instantiate the generalization code for a specific N.

        Args:
            generalisation_file (str): The file path of the generalization code.
            N (int): The value of N to instantiate.

        Returns:
            str: SMT-LIB Format constraints.
        """
        try:
            output = subprocess.run(
                ["python3", generalisation_file],
                capture_output=True,
                text=True,
                check=True,
                input=f"{N}",
            )
            if (
                output.stdout.strip()[2:] == "(assert )"
                or output.stdout.strip()[2:] == ""
                or output.stdout.strip()[2:] == "None"
            ):
                return ""
            return output.stdout.strip()[2:]
        except subprocess.CalledProcessError as e:
            self.conversation_handler.print_and_save(
                f"Error instantiating generalization: {e}"
            )
            return None

    def parse_raw_constraints(self, raw):
        """
        Parse raw SMT-LIB2 constraints into a single conjunctive form.
        """
        # Extract all individual assertions
        assertions = [
            line.strip()[8:-1]
            for line in raw.splitlines()
            if line.startswith("(assert")
        ]
        # Combine into a single conjunctive expression
        return f"(and {' '.join(assertions)})"

    def check_logical_equivalence(
        self, problem_name, N, original_assertions, generated_assertions
    ):
        """
        Check logical equivalence between original and generated constraints using Z3 CLI.
        Builds a combined .smt2 file, invokes Z3 to check equivalence in isolation.

        Note: Issue #7490 https://github.com/Z3Prover/z3/issues/7490 has been raised to address bug in Z3 Python API.

        Args:
            problem_name (str): The name of the problem.
            N (int): The input size index.
            original_assertions (dict): Contains keys "constants" (list) and "assertions" (list).
            generated_assertions (str): The generated constraints in SMT-LIB format.

        Returns:
            dict: A dictionary containing the result and reason.
        """
        result = {}
        orig_empty = not original_assertions.get("assertions")
        gen_empty = not generated_assertions.strip()
        if orig_empty and gen_empty:
            self.conversation_handler.load(
                "Constraints are logically equivalent - both empty."
            )
            result["result"] = True
            result["reason"] = "Both sets of constraints are empty."
            return result
        if orig_empty != gen_empty:
            self.conversation_handler.load(
                "Constraints are not logically equivalent - one empty, one not."
            )
            result["result"] = False
            result["reason"] = "One set of constraints is empty, the other is not."
            return result

        # Join original
        constants_str = "\n".join(original_assertions["constants"])
        original_body = "\n".join(original_assertions["assertions"])

        # Build the final .smt2 content
        smt_content = f"""; Combined SMT for checking equivalence
; Original constants:
{constants_str}

; Original constraints (A):
(push)
{original_body}
(pop)

; Generated constraints (B):
(push)
{generated_assertions}
(pop)

; Now do two checks:
; 1) A => B fails means we push A and then (not B)
(push)
{original_body}
(assert (not
{self.parse_raw_constraints(generated_assertions)}
))
(check-sat)
(pop)

; 2) B => A fails means we push B and then (not A)
(push)
{generated_assertions}
(assert (not
{self.parse_raw_constraints(original_body)}
))
(check-sat)
(pop)
"""
        if len(smt_content.encode("utf-8")) > self.max_file_size:
            self.conversation_handler.load(
                f"Constraints for N={N} too large (SIZE:{len(smt_content.encode('utf-8'))/1000000000}), aborting."
            )
            result["result"] = False
            result["reason"] = (
                "Constraints generated are too large and inefficiently wrong."
            )
            return result

        out_dir = os.path.join(self.generals, problem_name)
        out_path = os.path.join(out_dir, f"{problem_name}_{N}.smt2")
        with open(out_path, "w") as f:
            f.write(smt_content)

        self.conversation_handler.load(f"Created {out_path}. Now invoking Z3...")

        try:
            proc = subprocess.run(["z3", out_path], capture_output=True, text=True)
            output = proc.stdout.strip()
            self.conversation_handler.load(f"Z3 Output:\n{output}")

            result["reason"] = " ".join(
                out for out in output.splitlines() if out.startswith("(error")
            )

            # The output order after each (check-sat) is the order we see logically:
            #   1) A => B fail
            #   2) B => A fail
            # So parse line by line
            results = [
                line
                for line in output.splitlines()
                if line in ("sat", "unsat", "unknown")
            ]

            if len(results) < 2:
                self.conversation_handler.load("Could not parse results correctly.")
                result["result"] = False
                return result

            # If either check is 'sat', it means it found a counterexample => not equivalent
            # i.e. A=>B fails => results[0] == sat
            # i.e. B=>A fails => results[1] == sat
            if results[0] == "sat":
                self.conversation_handler.load(
                    "Original does not imply generated. Not equivalent."
                )
                result["result"] = False
                return result
            if results[1] == "sat":
                self.conversation_handler.load(
                    "Generated does not imply original. Not equivalent."
                )
                result["result"] = False
                return result

            self.conversation_handler.load("Constraints are logically equivalent.")
            result["result"] = True
            return result

        except Exception as e:
            self.conversation_handler.load(f"Error running Z3: {e}")
            result["reason"] = str(e)
            result["result"] = False
            return result

    def _load_json(self, filepath, default=None):
        """Load JSON file or return default if file doesn't exist"""
        if default is None:
            default = {}
        if os.path.exists(filepath):
            with open(filepath, "r") as file:
                return json.load(file)
        return default

    def _calculate_individual_stats(self, problem_name, success, attempts):
        """Calculate individual stats without file operations"""
        succeeded = all(
            success.get(N, {}).get("equivalent", False)
            for N in range(1, self.max_examples + 1)
        )
        examples_right = sum(
            success.get(N, {}).get("equivalent", False)
            for N in range(1, self.max_examples + 1)
        )
        return {
            "succeeded": succeeded,
            "attempts": attempts,
            "examples_right": examples_right,
            "generalisation": {
                N: {
                    "expected": success.get(N, {}).get("expected"),
                    "predicted": success.get(N, {}).get("predicted"),
                    "equivalent": success.get(N, {}).get("equivalent"),
                }
                for N in range(1, self.max_examples + 1)
            },
        }

    def _calculate_overall_stats(
        self, current_stats, succeeded, attempts, examples_right
    ):
        """Calculate updated overall stats without file operations"""
        if not current_stats:
            current_stats = {
                "succeeded": 0,
                "failed": 0,
                "average_attempts": 0.0,
                "max_attempts": 0,
                "average_examples_right": 0.0,
                "max_examples_right": 0,
            }

        if succeeded:
            current_stats["succeeded"] += 1
        else:
            current_stats["failed"] += 1

        total_problems = current_stats["succeeded"] + current_stats["failed"]

        # Update attempts
        current_stats["average_attempts"] = (
            (current_stats["average_attempts"] * (total_problems - 1)) + attempts
        ) / total_problems
        current_stats["max_attempts"] = max(attempts, current_stats["max_attempts"])

        # Update examples_right
        current_stats["average_examples_right"] = (
            (current_stats["average_examples_right"] * (total_problems - 1))
            + examples_right
        ) / total_problems
        current_stats["max_examples_right"] = max(
            examples_right, current_stats["max_examples_right"]
        )

        return current_stats

    def update_individual_stats(self, problem_name, success, attempts):
        individual_stats_path = os.path.join(self.stats_dir, "individual_stats.json")
        stats = self._load_json(individual_stats_path)

        # Calculate new stats
        stats[problem_name] = self._calculate_individual_stats(
            problem_name, success, attempts
        )

        # Save to file
        with open(individual_stats_path, "w") as file:
            json.dump(stats, file, indent=2)

        # Update overall stats
        self.update_overall_stats(
            stats[problem_name]["succeeded"],
            attempts,
            stats[problem_name]["examples_right"],
        )

        return stats

    def update_overall_stats(self, succeeded, attempts, examples_right):
        overall_stats_path = os.path.join(self.stats_dir, "overall_stats.json")
        current_stats = self._load_json(overall_stats_path)

        # Calculate new stats
        updated_stats = self._calculate_overall_stats(
            current_stats, succeeded, attempts, examples_right
        )

        # Save to file
        with open(overall_stats_path, "w") as file:
            json.dump(updated_stats, file, indent=2)

        return updated_stats

    def save_logs(self, problem_name):
        """
        Save the conversation to files.

        Args:
            problem_name (str): The name of the problem
        """
        # Save conversation log
        log_path = os.path.join(self.logs_dir, f"{problem_name}-log.txt")
        with open(log_path, "w") as file:
            file.write("".join(self.conversation_handler.__getconvesation__()))


# Define prompts
prompts = {
    "get_gen_sys": "Always respond first with an informal analysis in natural language (under the heading 'CASUAL', all caps), then with a formal Python program that outputs constraints in SMT-LIB format inside a code block (under the heading 'FORMAL', all caps). Make sure there is only one code block in your answer.",
    "get_gen_start": "I'm experimenting with a program to understand how input conditions influence its worst-case performance, particularly in terms of finding the longest execution path as the input size increases. By conducting a worst-case analysis, I aim to identify constraints that define a valid input set at different input sizes (N). So far, I have found one possible set of correct constraints/conditions (not the only one) that characterize such valid inputs. Here they are:",
    "get_gen_end": "\n\nGeneralize what makes the set of constraints valid such that we can recover a valid set for N inputs. Provide a Python function that outputs a valid SMT-LIB format assert constraint string for all values of N in SMT-LIB format, matching the format of the examples provided. Ensure the constraints are in canonical form. Don't overfit the data here but also don't oversimplify to the point of trivialness. Make sure none of the given examples contradict your generalization.",
    "get_gen_end1": "```\n\nEach inequality should be in the form '(assert (op x y))', where `x` and `y` are variables, constants, or formulas of variables/constants, and `op` is an operation or inequality (e.g., `=`, `<`, `<=`, `>`, `>=`, `and`, etc.).",
    "get_gen_end2": "\n\nStructure your response in the following format and use this code template:\n\nCASUAL:\n[CASUAL EXPLAINATION HERE]\n\nFORMAL:\n```python\n",
    "get_gen_example": """\n\nExample 1:\n\nCASUAL: 'Constraints grow with N'\n\nFORMAL: ```python\ndef generate_constraints(N: int) -> str: \nreturn constraints\nN = int(input("N="))\nconstraints = generate_constraints(N)\nprint(constraints)""",
    "get_gen_format": "Your response was not correct. Your 'FORMAL' section should use the template provided below, ensure your code below adheres to the SMTLIB format and should be a valid python program. Please provide the correct code.",
    "get_gen_format2": "Your code MUST return a single string that represents the constraints in SMT-LIB format.",
    "get_gen_format3": "Remember to always structure your reply as follows:\n\nCASUAL:\n[CASUAL EXPLAINATION HERE]\n\nFORMAL:\n```python\n[PYTHON CODE HERE]\n```\n",
    "get_gen_feedback": "The generalization is not correct. Remember to always structure your reply as follows:\n\nCASUAL:\n[CASUAL EXPLAINATION HERE]\n\nFORMAL:\n```python\n[PYTHON CODE HERE]\n```\n. I have applied your generalisation for several concrete values of N. Some of the outputs were not correct. Change your generalisation to account for the following outputs. Remember to always structure your reply with the headings 'CASUAL' and 'FORMAL'. Remember to use SMT-LIB format for the constraints and output a valid python program.",
}

# Define directories
directories = [
    "../Dataset/spf_output/SameHundred/verbose/heuristic",
    "../Dataset/spf_output/SameLowercase/verbose/heuristic",
    "../Dataset/spf_output/SameOnlyThird/verbose/heuristic",
    "../Dataset/spf_output/SameString/verbose/heuristic",
    "../Dataset/spf_output/SimpleAscendingLast/verbose/heuristic",
    "../Dataset/spf_output/SimpleEveryThird/verbose/heuristic",
    "../Dataset/spf_output/SimpleSignFlip/verbose/heuristic",
    "../Dataset/spf_output/SimpleSymmetric/verbose/heuristic",
    "../Dataset/spf_output/SimpleTrueFalse/verbose/heuristic",
    "../Dataset/spf_output/SimpleUnique/verbose/heuristic",
    "../Dataset/spf_output/WeirdConstDiff/verbose/heuristic",
    "../Dataset/spf_output/WeirdFibonacci/verbose/heuristic",
    "../Dataset/spf_output/WeirdTimes/verbose/heuristic",
    "../Dataset/spf_output/BadgerHash/verbose/heuristic",
    "../Dataset/spf_output/BadgerPassword/verbose/heuristic",
    "../Dataset/spf_output/BadgerUsername/verbose/heuristic",
    "../Dataset/spf_output/ComplexFlipPos_2/verbose/heuristic",
    "../Dataset/spf_output/ComplexHalfEqual/verbose/heuristic",
    "../Dataset/spf_output/ComplexMidPeak/verbose/heuristic",
    "../Dataset/spf_output/ComplexPalindrome/verbose/heuristic",
    "../Dataset/spf_output/ComplexOddsEvens/verbose/heuristic",
    "../Dataset/spf_output/WeirdHundred/verbose/heuristic",


]

if __name__ == "__main__":
    load_dotenv()
    os.environ["TOKENIZERS_PARALLELISM"] = "false"

    arguments = argparse.ArgumentParser(
        description="SPF Constraint Generalization Experiment"
    )
    arguments.add_argument(
        "--model-type",
        choices=["openai", "huggingface"],
        required=True,
        help="Type of model to use"
    )
    arguments.add_argument(
        "--model",
        required=True,
        help="Model identifier"
    )

    arguments.add_argument(
        "-q",
        "--quantization",
        choices=["4bit", "8bit"],
        help="Quantization type (Optional)",
        default=None
    )

    args = arguments.parse_args()

    MAX_EXAMPLES = 30
    MAX_SHOWN_EXAMPLES = 10
    MAX_ATTEMPTS = 10

    if args.model_type == "openai":
        llm_helper = openai.OpenAIHelper(
            api_key=os.getenv("OPENAI_KEY"),
            model=args.model
        )
        if not os.path.exists(f"{args.model}"):
            os.makedirs(f"{args.model}")
        resultsFolder = f"{args.model}"
    elif args.model_type == "huggingface":
        quantization_mode = args.quantization
        llm_helper = huggingface.HuggingFaceModel(
            model_name=args.model,
            token=os.getenv("HUGGINGFACE_TOKEN"),
            quantization_mode=quantization_mode
        )
        quantization_mode = args.quantization if args.quantization else "full"
        folder_suffix = f"-{args.quantization}" if args.quantization else "-full"
        resultsFolder = f"{args.model}{folder_suffix}"
        if not os.path.exists(resultsFolder):
            os.makedirs(resultsFolder)

    # Run the experiment
    experiment = Experiment(
        directories=directories,
        prompts=prompts,
        llm_helper=llm_helper,
        resultsFolder=resultsFolder,
        max_examples=MAX_EXAMPLES,
        max_shown_examples=MAX_SHOWN_EXAMPLES,
        max_attempts=MAX_ATTEMPTS,
    )
    experiment.run()
