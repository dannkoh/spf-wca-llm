import csv
import json
import os
import re
import subprocess

import z3
from dotenv import load_dotenv
from LLMHelper import HuggingFaceHelper, OpenAIHelper
from sympy import sympify
from sympy.core import Symbol
from sympy.core.relational import Relational
from sympy.logic.boolalg import BooleanFunction
from sympy.parsing.sympy_parser import (
    implicit_multiplication_application,
    standard_transformations,
)


class ConversationHandler:
    """
    A class to handle printing and saving conversation messages.
    """

    def __init__(self):
        """
        Initialize the conversation handler.
        """
        self.conversation = []

    def print_and_save(self, new_message):
        """
        Print and save a new message in the conversation.

        Args:
            new_message (str): The message to print and save.
        """
        print("\n" + "#" * 60)
        print(new_message)
        self.conversation.append("\n" + "#" * 60 + "\n")
        self.conversation.append(new_message)

class Experiment:
    """
    A class to run the experiment using provided CSV files and prompts.
    """

    def __init__(self, csv_files, prompts, llm_helper, resultsFolder = None,using_code=False, using_z3=False,
                 max_examples=13, max_shown_examples=10, max_hidden_examples=3,
                 max_attempts=10, max_attempts_before_z3=5):
        """
        Initialize the experiment with the given parameters.

        Args:
            csv_files (list): List of CSV file paths.
            prompts (dict): Dictionary of prompt templates.
            llm_helper (object): Initialized LLM helper (OpenAIHelper or HuggingFaceHelper).
            using_code (bool, optional): Whether to use code generation. Defaults to False.
            using_z3 (bool, optional): Whether to use Z3 conversion after attempts. Defaults to False.
            max_examples (int, optional): Number of examples to process. Defaults to 13.
            max_shown_examples (int, optional): Number of examples shown to the LLM. Defaults to 10.
            max_hidden_examples (int, optional): Number of hidden examples. Defaults to 3.
            max_attempts (int, optional): Maximum number of generalization attempts. Defaults to 10.
            max_attempts_before_z3 (int, optional): Number of attempts before trying Z3 conversion. Defaults to 5.
        """
        if resultsFolder is None:
            raise ValueError("resultsFolder is required")


        # Create results directory structure
        self.results_dir = resultsFolder
        self.generals_dir = os.path.join(self.results_dir, "generals")
        self.z3_generals_dir = os.path.join(self.results_dir, "z3_generals")
        self.logs_dir = os.path.join(self.results_dir, "logs")
        self.stats_dir = os.path.join(self.results_dir, "stats")
        
        # Create necessary directories
        for directory in [self.generals_dir, self.z3_generals_dir, self.logs_dir, self.stats_dir]:
            os.makedirs(directory, exist_ok=True)

        self.csv_files = csv_files
        self.prompts = prompts
        self.llm_helper = llm_helper
        self.using_code = using_code
        if using_z3:
            raise NotImplementedError("Z3 conversion is not yet supported.")
        self.using_z3 = using_z3
        self.max_examples = max_examples
        self.max_shown_examples = max_shown_examples
        self.max_hidden_examples = max_hidden_examples
        self.max_attempts = max_attempts
        self.max_attempts_before_z3 = max_attempts_before_z3
        self.experiment_stats = {}
        self.conversation_handler = ConversationHandler()

    def run(self):
        """
        Run the experiment by processing each CSV file.
        """
        for file_path in self.csv_files:
            java_file_name = os.path.basename(file_path).replace(".csv", ".java").removeprefix("own.")
            java_dir = os.path.join("../Dataset/java_programs/own/", java_file_name)
            self.process_file(file_path=file_path, source_filepath=java_dir)

    def process_file(self, file_path, source_filepath):
        """
        Process a single CSV file.

        Args:
            file_path (str): The path to the CSV file.
        """
        gen_sys = "get_gen_sys_code" if self.using_code else "get_gen_sys_llm"
        llm_get_gen = [{"role": "system", "content": self.prompts[gen_sys]}]

        convo_stats = {}
        # Get constraints from SPF
        constraints = self.get_constraints_from_csv(file_path)

        source = self.get_source_file(filepath=source_filepath)

        # Get initial generalization
        self.conversation_handler.print_and_save(" " * 20 + "GET INITIAL GENERALISATION")
        prompt_get_gen = self.generate_initial_prompt(constraints=constraints, source_code=source)
        self.conversation_handler.print_and_save(prompt_get_gen)

        # Update conversation history
        llm_get_gen.append({"role": "user", "content": prompt_get_gen})

        response_get_gen = self.llm_helper.get_response(history=llm_get_gen)
        content_get_gen = response_get_gen.choices[0].message.content
        self.conversation_handler.print_and_save(content_get_gen)
        llm_get_gen.append({"role": "assistant", "content": content_get_gen})

        generalisation = self.extract_generalisation(content_get_gen, llm_get_gen)
        if generalisation is None:
            return  # Early exit if extraction fails

        self.evaluate_and_update_generalisation(constraints, generalisation, llm_get_gen, convo_stats, file_path)

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

    def get_constraints_from_csv(self, file_path):
        """
        Extract constraints from the CSV file.

        Args:
            file_path (str): The path to the CSV file.

        Returns:
            list: A list of constraints extracted from the CSV.
        """
        constraints = []
        # constraints_z3 = []
        with open(file_path, 'r') as file:
            reader = csv.reader(file)
            next(reader)  # Skip the header row
            for example_id in range(self.max_examples):
                row = next(reader)
                con = row[12]
                # Preprocess format of constraints
                con = con.replace("CONST_", "").replace(" &&", ",").replace("CONSTRAINT N/A", "None")
                constraints.append(con.strip())
                # con_z3 = re.sub(r'(\d+)', r'(\1)', con).replace(")x(", ",").replace(")_(", ",").replace("in", "ss")
                # con_z3 = "And(" + con_z3 + ")" if con_z3 != "None" else "True"
                # constraints_z3.append(con_z3)
        return constraints

    def generate_initial_prompt(self, constraints, source_code):
        """
        Generate the initial prompt for generalization.

        Args:
            constraints (list): List of constraints.

        Returns:
            str: The generated prompt.
        """
        prompt_get_gen = self.prompts["get_gen_start"]

        for example_id in range(self.max_shown_examples):
            prompt_get_gen += f"\n\nValid constraints for {example_id + 1} inputs (N={example_id + 1}):\n"
            prompt_get_gen += str(constraints[example_id])
        
        prompt_get_gen += "\n\nHere is more context for you to generalise the constraints better. Below is the source code for the SPF problem:\n"
        prompt_get_gen += source_code
        prompt_get_gen += self.prompts["get_gen_end"]
        if self.using_code:
            prompt_get_gen += self.prompts["get_gen_end_code1"]
            with open("python_code_template.py", "r") as file:
                prompt_get_gen += file.read()
            prompt_get_gen += self.prompts["get_gen_end_code2"]
        return prompt_get_gen

    def extract_generalisation(self, content_get_gen, llm_get_gen):
        """
        Extract the generalisation from the LLM's response.

        Args:
            content_get_gen (str): The content from the LLM's response.
            llm_get_gen (list): The LLM conversation history.

        Returns:
            str: The extracted generalisation, or None if extraction fails.
        """
        generalisation_empty = "FORMAL" in content_get_gen and len(content_get_gen.split("FORMAL", 1)[1].strip()) < 10
        gen_limit = 5
        while ("FORMAL" not in content_get_gen or generalisation_empty) and gen_limit != 0:
            gen_message = "Your response is missing or has an incomplete 'FORMAL' section. Please provide the 'FORMAL' section with the complete generalisation."

            self.conversation_handler.print_and_save(gen_message)

            # Update conversation history
            llm_get_gen.append({"role": "user", "content": gen_message})

            response_get_gen = self.llm_helper.get_response(history=llm_get_gen)
            content_get_gen = response_get_gen.choices[0].message.content
            self.conversation_handler.print_and_save(content_get_gen)

            # Append assistant's response
            llm_get_gen.append({"role": "assistant", "content": content_get_gen})

            generalisation_empty = "FORMAL" in content_get_gen and len(content_get_gen.split("FORMAL", 1)[1].strip()) < 10
            gen_limit -= 1

        if "FORMAL" in content_get_gen:
            generalisation = content_get_gen.split("FORMAL", 1)[1].strip(":\n ")
            if self.using_code:
                # Extract code block
                if "```" in generalisation:
                    generalisation = generalisation.split("```")[1].replace("python", "").strip()
                else:
                    # Handle case where code block markers are missing
                    generalisation = generalisation.strip()
                # Ensure the code includes necessary execution lines
                if "return" in generalisation.split("\n")[-1]:
                    generalisation += "\n\nN = int(input(\"N=\"))\nconstraints = generate_constraints(N)\nconstraints = \", \".join(constraints)\nprint(constraints)"
            return generalisation
        else:
            return None

    def evaluate_and_update_generalisation(self, constraints, generalisation, llm_get_gen, convo_stats, file_path):
        test_name = os.path.basename(file_path).replace('.csv', '')
        
        test_dir = self.z3_generals_dir if self.using_z3 else self.generals_dir
        test_path = os.path.join(
            test_dir,
            f"{test_name}.{'py' if self.using_code or self.using_z3 else 'txt'}"
        )


        os.makedirs(os.path.dirname(test_path), exist_ok=True)
        for attempt_id in range(self.max_attempts):
            self.conversation_handler.print_and_save(" " * 20 + f"ATTEMPT NUMBER {attempt_id + 1}")
            eval_results = []
            test_name = file_path.split("/")[-1][:-4]
            # if attempt_id >= self.max_attempts_before_z3 and not self.using_z3:
            #     self.conversation_handler.print_and_save(" " * 20 + "CONVERTING TO Z3")
            #     generalisation = self.convert_to_z3(generalisation)
            #     self.conversation_handler.print_and_save(f"Generated Z3 Code:\n{generalisation}")
            #     self.using_z3 = True

            with open(test_path, "w") as file:
                file.write(generalisation)

            for example_id in range(self.max_examples):
                self.conversation_handler.print_and_save(" " * 20 + f"EVALUATING EXAMPLE NUMBER {example_id + 1}")
                example_eval = {}
                encountered_error = False  # Initialize the error flag

                if self.using_z3:
                    try:
                        input_data = str(example_id + 1)
                        z3_code = generalisation.replace("Int('N')", f"IntVal({input_data})")
                        local_vars = {}
                        exec(z3_code, {}, local_vars)
                        prediction = local_vars.get('prediction')
                        s = z3.Solver()
                        s.add(prediction)
                        result = s.check()
                        if result == z3.sat:
                            predicted_constraints = "sat"
                        elif result == z3.unsat:
                            predicted_constraints = "unsat"
                        else:
                            predicted_constraints = "unknown"
                        example_eval["predicted_constraints"] = predicted_constraints
                    except Exception as e:
                        self.conversation_handler.print_and_save(f"Error during Z3 execution: {e}")
                        encountered_error = True  # Set the error flag
                elif self.using_code and not self.using_z3:
                    try:
                        input_data = str(example_id + 1)
                        output = subprocess.run(["python3", test_path], input=input_data, text=True, capture_output=True, check=True)
                        predicted_constraints = output.stdout.strip()
                        example_eval["predicted_constraints"] = predicted_constraints
                    except subprocess.CalledProcessError as e:
                        self.conversation_handler.print_and_save(f"Error during code execution: {e}")
                        encountered_error = True  # Set the error flag

                if encountered_error or (not self.using_z3 and not self.using_code):
                    # Use LLM to apply the generalisation
                    apply_gen_sys = [{"role": "system", "content": self.prompts["apply_gen_sys"]}]
                    apply_gen_start = self.prompts["apply_gen_start"]
                    prompt_apply_gen = apply_gen_start + generalisation + "\n```\n"
                    prompt_apply_gen += f"\n\nCalculate the constraints for N={example_id + 1}.\n"

                    self.conversation_handler.print_and_save(prompt_apply_gen)

                    # Update conversation history
                    apply_gen_sys.append({"role": "user", "content": prompt_apply_gen})

                    response_apply_gen = self.llm_helper.get_response(history=apply_gen_sys)
                    content_apply_gen = response_apply_gen.choices[0].message.content
                    self.conversation_handler.print_and_save(content_apply_gen)

                    # Append assistant's response
                    apply_gen_sys.append({"role": "assistant", "content": content_apply_gen})

                    # Extract the ANSWER section
                    if "ANSWER" in content_apply_gen:
                        predicted_constraints = content_apply_gen.split("ANSWER", 1)[1].strip(":\n ")
                    else:
                        predicted_constraints = "None"
                    example_eval["predicted_constraints"] = predicted_constraints

                # Compare predicted constraints with actual constraints
                expected_constraints = constraints[example_id]
                matches = self.compare_constraints(expected_constraints, predicted_constraints)
                example_eval["example_id"] = example_id + 1
                example_eval["expected"] = expected_constraints
                example_eval["predicted"] = predicted_constraints
                example_eval["matches"] = matches

                eval_results.append(example_eval)

            # Check if all predictions were correct
            true_matches = [example_eval["matches"] for example_eval in eval_results]
            results = {n: {"result":eval_results[n]["matches"],"expected": eval_results[n]["expected"], "predicted": eval_results[n]["predicted"]} for n in range(self.max_examples)}
            if False not in true_matches:
                # All predictions match
                convo_stats["succeeded"] = True
                convo_stats["attempts"] = attempt_id + 1
                convo_stats["examples_right"] = self.max_examples
                convo_stats["generalisation"] = results
                break

            # Break if this was the last attempt at generalising
            if attempt_id + 1 == self.max_attempts:
                convo_stats["succeeded"] = False
                convo_stats["attempts"] = attempt_id + 1
                convo_stats["examples_right"] = sum(true_matches)
                convo_stats["generalisation"] = results
                break

            # Generate feedback and get a new generalisation
            self.conversation_handler.print_and_save(" " * 20 + f"#{attempt_id + 1}  GET NEW GENERALISATION")
            prompt_get_gen = self.generate_feedback_prompt(eval_results)
            self.conversation_handler.print_and_save(prompt_get_gen)

            # Update conversation history
            llm_get_gen.append({"role": "user", "content": prompt_get_gen})

            response_get_gen = self.llm_helper.get_response(history=llm_get_gen)
            content_get_gen = response_get_gen.choices[0].message.content
            self.conversation_handler.print_and_save(content_get_gen)

            # Append assistant's response
            llm_get_gen.append({"role": "assistant", "content": content_get_gen})

            generalisation = self.extract_generalisation(content_get_gen, llm_get_gen)
            if generalisation is None:
                break

        self.conversation_handler.print_and_save("(done with that example)")
        self.save_results(file_path, convo_stats)
    
    def convert_to_z3(self, generalisation):
        """
        Convert the generalisation to Z3 format.

        Args:
            generalisation (str): The current generalisation.
        """

        transformations = standard_transformations + (implicit_multiplication_application,)

        try:
            # Attempt to parse the generalisation using SymPy
            expr = sympify(generalisation, transformations=transformations)
            # Convert SymPy expression to Z3 expression
            z3_expr = self.sympy_to_z3(expr)
            # Build the full Z3 code
            variables = list(expr.free_symbols)
            var_declarations = '\n'.join([f"{str(var)} = Int('{str(var)}')" for var in variables if str(var) != 'N'])
            # Build the full Z3 code
            z3_code = f"""from z3 import *
            N = Int('N')
            ss = Function('ss', IntSort(), IntSort())
            {var_declarations}

            prediction = {z3_expr}
            """
            generalisation = z3_code
        except Exception:
            # If parsing fails, use the LLM
            self.conversation_handler.print_and_save("Parsing failed, using LLM for conversion.")
            llm_get_z3 = [{"role": "system", "content": self.prompts["get_z3_from_maths"]}]
            prompt = self.prompts["get_z3_from_maths"] + f"```\n{generalisation}\n```"
            self.conversation_handler.print_and_save(prompt)
            llm_get_z3.append({"role": "user", "content": prompt})
            response_get_z3 = self.llm_helper.get_response(history=llm_get_z3)
            content_get_z3 = response_get_z3.choices[0].message.content
            self.conversation_handler.print_and_save(content_get_z3)
            # Extract code block
            if "```" in content_get_z3:
                z3_code = content_get_z3.split("```")[1].replace("python", "").strip()
                generalisation = z3_code
            else:
                self.conversation_handler.print_and_save("Failed to get Z3 code from LLM.")
                generalisation = None
        return generalisation

    def sympy_to_z3(self, expr):
        """
        Convert a SymPy expression to a Z3 expression.

        Args:
            expr (sympy.Expr): The SymPy expression.

        Returns:
            str: The Z3 code as a string.
        """
        if isinstance(expr, Symbol):
            # Return Z3 variable usage
            return f"ss({expr.name})"
        elif isinstance(expr, Relational):
            lhs = self.sympy_to_z3(expr.lhs)
            rhs = self.sympy_to_z3(expr.rhs)
            op = expr.rel_op
            return f"({lhs} {op} {rhs})"
        elif isinstance(expr, BooleanFunction):
            args = [self.sympy_to_z3(arg) for arg in expr.args]
            if expr.func.__name__ == 'And':
                return f"And({', '.join(args)})"
            elif expr.func.__name__ == 'Or':
                return f"Or({', '.join(args)})"
            elif expr.func.__name__ == 'Not':
                return f"Not({args[0]})"
            elif expr.func.__name__ == 'ForAll':
                vars = ', '.join([str(v) for v in expr.bounds])
                body = self.sympy_to_z3(expr.function)
                return f"ForAll([{vars}], {body})"
            else:
                raise NotImplementedError(f"Unsupported BooleanFunction: {expr.func.__name__}")
        elif expr.is_Add:
            args = [self.sympy_to_z3(arg) for arg in expr.args]
            return f"({' + '.join(args)})"
        elif expr.is_Mul:
            args = [self.sympy_to_z3(arg) for arg in expr.args]
            return f"({' * '.join(args)})"
        elif expr.is_Pow:
            base = self.sympy_to_z3(expr.args[0])
            exp = self.sympy_to_z3(expr.args[1])
            return f"({base} ** {exp})"
        elif expr.is_Number:
            return str(expr)
        elif expr.is_Function:
            # Handle functions like floor, ceiling, etc.
            func_name = expr.func.__name__
            args = [self.sympy_to_z3(arg) for arg in expr.args]
            return f"{func_name}({', '.join(args)})"
        else:
            # Handle other cases or raise an error
            raise NotImplementedError(f"Unsupported expression type: {type(expr)}")

    def compare_constraints(self, expected_constraints, predicted_constraints):
        """
        Compare expected and predicted constraints, first manually, then using the LLM if necessary.

        Args:
            expected_constraints (str): The expected constraints.
            predicted_constraints (str): The predicted constraints from the LLM or code execution.

        Returns:
            bool: True if constraints match, False otherwise.
        """
        # First check if there was an error in code execution
        if self.using_code and 'Error' in predicted_constraints:
            return False  # Cannot compare due to error

        # Manually compare constraints
        compare1 = expected_constraints.replace(" ", "").replace("\n", "")
        compare2 = predicted_constraints.replace(" ", "").replace("\n", "")

        if compare1 == compare2:
            return True

        # Check for 'None' or empty constraints
        if compare1 in ["None", ""] and compare2 in ["None", ""]:
            return True

        # Split constraints into sets and compare
        set1 = set([c.strip() for c in expected_constraints.split(",") if c.strip()])
        set2 = set([c.strip() for c in predicted_constraints.split(",") if c.strip()])

        if set1 == set2:
            return True

        # If sets are different, use LLM to compare
        return self.compare_constraints_with_llm(expected_constraints, predicted_constraints)

    def compare_constraints_with_llm(self, expected_constraints, predicted_constraints):
        """
        Use LLM to compare expected and predicted constraints.

        Args:
            expected_constraints (str): The expected constraints.
            predicted_constraints (str): The predicted constraints from the LLM or code execution.

        Returns:
            bool: True if constraints match, False otherwise.
        """
        compare_sys = [{"role": "system", "content": self.prompts["compare_sys"]}]

        prompt_compare = self.prompts["compare_start"] + "\nYOUR CONSTRAINTS:\n" + \
            predicted_constraints + "\n\nSPF CONSTRAINTS:\n" + expected_constraints

        self.conversation_handler.print_and_save(prompt_compare)

        # Update conversation history
        compare_sys.append({"role": "user", "content": prompt_compare})

        response_compare = self.llm_helper.get_response(history=compare_sys, model='gpt-4o-mini')
        content_compare = response_compare.choices[0].message.content
        self.conversation_handler.print_and_save(content_compare)

        # Append assistant's response
        compare_sys.append({"role": "assistant", "content": content_compare})

        if "ANSWER" in content_compare:
            matches_text = content_compare.split("ANSWER", 1)[1].strip(":\n ").upper()
            matches = "MATCHES" in matches_text
        else:
            matches = False  # Default to False if the answer section is missing
        return matches

    def generate_feedback_prompt(self, eval_results):
        """
        Generate a prompt for the LLM based on evaluation feedback.

        Args:
            eval_results (list): Evaluation results from previous attempts.

        Returns:
            str: The feedback prompt.
        """
        prompt_get_gen = self.prompts["new_gen_start_code"] if self.using_code else self.prompts["new_gen_start_llm"]
        for result in eval_results[:self.max_shown_examples]:
            if result["matches"]:
                prompt_get_gen += f"For N={result['example_id']}, the generalisation output correctly fits the given data.\n\n"
            elif result.get("reason") == "ERROR":
                prompt_get_gen += f"For N={result['example_id']}, there was an error in the code:\n"
                prompt_get_gen += result["predicted_constraints"] + "\n\n"
            else:
                prompt_get_gen += f"For N={result['example_id']}, the output constraint set should be:\n"
                prompt_get_gen += "```\n" + result["expected"] + "\n```\n"
                prompt_get_gen += "But your generalisation implies the set:\n"
                prompt_get_gen += "```\n" + result["predicted_constraints"] + "\n```\n"
                prompt_get_gen += "This is not right.\n\n"
        prompt_get_gen = prompt_get_gen.strip()
        return prompt_get_gen

    def save_results(self, file_path, convo_stats):
        """
        Save the conversation and statistics to files.

        Args:
            file_path (str): The path to the CSV file.
            convo_stats (dict): Conversation statistics.
        """
        file_name = os.path.basename(file_path).replace('.csv', '')
        # Save conversation log
        log_path = os.path.join(self.logs_dir, f"{file_name}-log.txt")

        with open(log_path, "w") as file:
            file.write("".join(self.conversation_handler.conversation))
        self.experiment_stats[file_name] = convo_stats

        # Save individual statistics
        self.experiment_stats[file_name] = convo_stats
        stats_path = os.path.join(self.stats_dir, "individual_stats.json")
        with open(stats_path, "w") as file:
            json.dump(self.experiment_stats, file, indent=2)

# Define prompts
prompts = {
    "get_gen_sys_code": "Always respond first with an informal analysis in natural language and maybe some mathematics (under the heading 'CASUAL', all caps), then with a formal Python program answer inside a code block (under the heading 'FORMAL', all caps). Make sure there is only one code block in your answer.",
    "get_gen_sys_llm": "Always respond first with an informal analysis in natural language (under the heading 'CASUAL', all caps), then with a formal mathematical expression using standard mathematical(under the heading 'FORMAL', all caps). The mathematical expression should be precise and complete. Do not include any natural language description in the 'FORMAL' section.",
    "get_gen_start": "I'm experimenting with a program and trying to find what makes an increasingly large set of inputs valid. So far I have found one possible set of correct constraints/conditions (not the only one) which define a valid input. Here they are.",
    "get_gen_end": "\n\nGeneralise what makes the set of constraints valid such that we can recover a valid set for N inputs. Don't overfit the data here but also don't oversimplify to the point of trivialness. Make sure none of the given examples contradict your generalisation.",
    "get_gen_end_code1": "\n\nUse this code template to formally express the generalisation for N constraints:\n```python\n",
    "get_gen_end_code2": "```\n\nEach inequality is usually in the form \"x op y\" where x, y are some variable, constant or some formula of variables and/or constants, and op is an operation or inequality.",
    "apply_gen_sys": "Always respond first with a step-by-step application of the generalisation (under the heading 'WORKING OUT', all caps), then with the final answer (under the heading 'ANSWER', all caps), giving the answer as a comma-separated list of constraints without any other natural language like 'here is the set'. If the answer is the empty set just put 'None' as the answer. Make no further comments after the answer section like 'This is what the generalisation says should hold', for example, just stop.",
    "apply_gen_start": "I have a generalisation defining a set of inequalities for a set of variables. The definition is general for an arbitrary N amount of variables. Here is the generalisation:\n\n```\n",
    "compare_sys": "Always respond first with your thinking process (under the heading 'THINKING', all caps), then with the final answer of 'MATCHES' (all caps) if matches or 'DIFFERENT' (all caps) if doesn't match (under the heading 'ANSWER', all caps), then reiterate the place/reason it does not match (under the heading 'REASON', all caps).",
    "compare_start": "I have two sets of inequalities over variables. Tell me if these two sets are the same or not, and how they differ if they do. Ignore the order of constraints and differences in formatting (e.g., spaces, newline characters, and exact variable names like 's_0', 's0', 's(0)', '{s_0}' are all the same), though the numbers associated with variable names should be the same. Always check if two sets of constraints match. Normalise variable names (e.g., 's_0', 's0', 's(0)' → 's0'). Ignore order and formatting. 'There are no constraints' or 'None' is equivalent to the empty set. If the only difference between the two is formatting, then they actually match. They're only different if one set is bigger than the other or if they contain constraints that aren't in the other. Try to keep your final reasons short but not generic and without using bullet points or numbered lists.\n\n",
    "new_gen_start_code": "I have run your code for several concrete values of N. Some of the outputs were not correct. Change your generalisation and code to account for the following outputs. Remember to always structure your reply with the headings 'CASUAL' and 'FORMAL'.\n\n",
    "new_gen_start_llm": "Remember to always structure your reply with the same headings. I have applied your generalisation for several concrete values of N. Some of the outputs were not correct. Change your generalisation to account for the following outputs. Remember to always structure your reply with the headings 'CASUAL' and 'FORMAL'.\n\n",
    "get_maths_code": "The following python function takes the parameter N and returns a list of strings. The strings can be interpreted as inequalities or constraints featuring certain variables and constants.\n\n```python\ndef generate_constraints(N):\n    constraints = []\n    for i in range(N):\n        for j in range(i+1, N):\n            constraints.append(f'in{i} != in{j}')\n    return constraints\n```\n\nThis can be converted to a mathematical definition of a set of inequalities. The set definition should be a generalisation for an arbitrary N, the same way that the code can take any input value for N.\n\n```\n{in[i] ≠ in[j] | 0 ≤ i < j < N} for all i, j ∈ Z+ \n```\n\nConvert the following code in the same way, returning your definition in a code block. You may define and join several sets using the union operation if that makes it easier. \n\n",
    "get_maths_llm": "The following set description defines a generalisation over a set of inequalities or constraints featuring certain variables and constants. It is parametrised by N, which is the amount of unique variables that the constraints may contain. \n\n```\nTaking into account that the constraints should be ordered in a descending order as per the variables used and the input values (i.e., greatest to smallest), a generalisation of these constraints for N inputs would be formatted as:\n\nFor i from N-2 down to 0:\n    For j from N-1 down to i+1:\n        Add the constraint 'in[i] != in[j]'\n\nThis adds a sequence of constraints starting from 'inN-2', and each 'in[i]' is compared for inequality with the next higher inputs ('in[i+1]', 'in[i+2]', ..., 'in[N-1]'). \n```\n\nThis can be converted to a mathematical definition of a set of inequalities. The set definition should be a generalisation for an arbitrary N.\n\n```\n{{in[i] ≠ in[j] | 0 ≤ i < j < N} for all i, j ∈ Z+  \n```\n\nConvert the following description in the same way, returning your definition in a code block. You may define and join several sets using the union operation if that makes it easier.\n\n",
    "get_z3_from_maths": "Here is the previous example of a The example mathematical definition of a set of inequalities.\n\n```\n{in[i] ≠ in[j] | 0 ≤ i < j < N} for all i, j ∈ Z+ \n```\n\nThis can be further converted to the syntax of the z3 solver in Python.\n\n```python\nN = Int('N')\nss = Function('ss', IntSort(), IntSort())\ni = Int('i')\nj = Int('j')\n\n# for all i, for all j, ((0 ≤ i < j < N) -> ss[i] != ss[j])\nprediction = ForAll([i, j], Implies(And(0 <= i, i < j, j < N), ss(i) != ss(j)))\n```\n\nHere is your mathematical definition again.\n```\n{in[i-1] = in[i]  |  1 ≤ i < (N+2)//2} ∪ {in[i-1] < in[i]  |  (N+2)//2 ≤ i < N} for all i ∈ Z+\n```\n\nConvert this to the syntax of the z3 solver in Python, the same way as the example. Start your code with the lines \"N = Int('N')\" and \"ss = Function('ss', IntSort(), IntSort())\" and have the final specification be stored in the 'prediction' variable. Notice how the Function/array of variables is always called 'ss' when converted, even though its called 'in' in the original maths. If you need to use a two dimensional function, define it as 'ss = Function('ss', IntSort(), IntSort(), IntSort())'. Also make sure to write it in parenthesis (e.g. ss(i)) instead of square brackets (e.g. ss[i]). Also make sure to split 0 <= i < N to And(0 <= i, i < N). Also make sure to use '/' division instead of '//' since they are equivalent.\n\n",
}

# Define CSV files
csv_files = [
	"../Dataset/spf_output/SameHundred/verbose/heuristic/own.SameHundred.csv",
	"../Dataset/spf_output/SameLowercase/verbose/heuristic/own.SameLowercase.csv",
	"../Dataset/spf_output/SameOnlyThird/verbose/heuristic/own.SameOnlyThird.csv",
	"../Dataset/spf_output/SameString/verbose/heuristic/own.SameString.csv",
	"../Dataset/spf_output/SimpleAscendingLast/verbose/heuristic/own.SimpleAscendingLast.csv",
	"../Dataset/spf_output/SimpleEveryThird/verbose/heuristic/own.SimpleEveryThird.csv",
	"../Dataset/spf_output/SimpleSignFlip/verbose/heuristic/own.SimpleSignFlip.csv",
	"../Dataset/spf_output/SimpleSymmetric/verbose/heuristic/own.SimpleSymmetric.csv",
	"../Dataset/spf_output/SimpleTrueFalse/verbose/heuristic/own.SimpleTrueFalse.csv",
	"../Dataset/spf_output/SimpleUnique/verbose/heuristic/own.SimpleUnique.csv",
	"../Dataset/spf_output/WeirdConstDiff/verbose/heuristic/own.WeirdConstDiff.csv",
	"../Dataset/spf_output/WeirdFibonacci/verbose/heuristic/own.WeirdFibonacci.csv",
	"../Dataset/spf_output/WeirdTimes/verbose/heuristic/own.WeirdTimes.csv",
	"../Dataset/spf_output/BadgerHash/verbose/heuristic/own.BadgerHash.csv",
	"../Dataset/spf_output/BadgerPassword/verbose/heuristic/own.BadgerPassword.csv",
	"../Dataset/spf_output/BadgerUsername/verbose/heuristic/own.BadgerUsername.csv",
	# "../Dataset/spf_output/ComplexFlipPos_1/verbose/heuristic/own.ComplexFlipPos_1.csv",
	"../Dataset/spf_output/ComplexFlipPos_2/verbose/heuristic/own.ComplexFlipPos_2.csv",
	"../Dataset/spf_output/ComplexHalfEqual/verbose/heuristic/own.ComplexHalfEqual.csv",
	"../Dataset/spf_output/ComplexMidPeak/verbose/heuristic/own.ComplexMidPeak.csv",
	"../Dataset/spf_output/ComplexPalindrome/verbose/heuristic/own.ComplexPalindrome.csv",
	"../Dataset/spf_output/ComplexOddsEvens/verbose/heuristic/own.ComplexOddsEvens.csv",
]


load_dotenv()
os.environ["TOKENIZERS_PARALLELISM"] = "false"

USE_OPENAI = True  # Set to False if using HuggingFace model
USING_CODE = False
USING_Z3 = False
MAX_EXAMPLES = 13
MAX_SHOWN_EXAMPLES = 10
MAX_HIDDEN_EXAMPLES = 3
MAX_ATTEMPTS = 10
MAX_ATTEMPTS_BEFORE_Z3 = 5


resultsFolder = None


if USE_OPENAI:
    llm_helper = OpenAIHelper(
        api_key=os.getenv("OPENAI_KEY"),
        model=os.getenv("OPENAI_MODEL")
    )
    if not os.path.exists(f"{os.getenv('OPENAI_MODEL')}-{'using-LLM' if not USING_CODE and not USING_Z3 else 'using-python' if USING_CODE else 'using-z3'}"):
        os.makedirs(f"{os.getenv('OPENAI_MODEL')}-{'using-LLM' if not USING_CODE and not USING_Z3 else 'using-python' if USING_CODE else 'using-z3'}")
    resultsFolder = f"{os.getenv('OPENAI_MODEL')}-{'using-LLM' if not USING_CODE and not USING_Z3 else 'using-python' if USING_CODE else 'using-z3'}"
else:
    llm_helper = HuggingFaceHelper(
        model_name=os.getenv("HUGGINGFACE_MODEL"),
        hf_token=os.getenv("HUGGINGFACE_TOKEN")
    )
    if not os.path.exists(f"{os.getenv('HUGGINGFACE_MODEL')}-{'using-LLM' if not USING_CODE and not USING_Z3 else 'using-python' if USING_CODE else 'using-z3'}"):
        os.makedirs(f"{os.getenv('HUGGINGFACE_MODEL')}-{'using-LLM' if not USING_CODE and not USING_Z3 else 'using-python' if USING_CODE else 'using-z3'}")
    resultsFolder = f"{os.getenv('HUGGINGFACE_MODEL')}-{'using-LLM' if not USING_CODE and not USING_Z3 else 'using-python' if USING_CODE else 'using-z3'}"


# Run the experiment
experiment = Experiment(
    csv_files=csv_files,
    prompts=prompts,
    llm_helper=llm_helper,
    resultsFolder=resultsFolder,
    using_code=USING_CODE,
    using_z3=USING_Z3,
    max_examples=MAX_EXAMPLES,
    max_shown_examples=MAX_SHOWN_EXAMPLES,
    max_hidden_examples=MAX_HIDDEN_EXAMPLES,
    max_attempts=MAX_ATTEMPTS,
    max_attempts_before_z3=MAX_ATTEMPTS_BEFORE_Z3,
)
experiment.run()

# Save overall statistics
overall_stats = {
    "succeeded": 0,
    "failed": 0,
    "average_attempts": 0,
    "max_attempts": MAX_ATTEMPTS,
    "average_examples_right": 0,
    "max_examples_right": MAX_EXAMPLES,
}
for key, value in experiment.experiment_stats.items():
    overall_stats["succeeded"] += 1 if value["succeeded"] else 0
    overall_stats["failed"] += 0 if value["succeeded"] else 1
    overall_stats["average_attempts"] += value["attempts"]
    overall_stats["average_examples_right"] += value["examples_right"]
total_files = len(experiment.experiment_stats)
if total_files > 0:
    overall_stats["average_attempts"] /= total_files
    overall_stats["average_examples_right"] /= total_files
with open(f"{resultsFolder}/overall_stats.json", "w") as file:
    json.dump(overall_stats, file)
