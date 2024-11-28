import os
import csv
import json
from dotenv import load_dotenv

from LLMHelper import OpenAIHelper, HuggingFaceHelper

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

    def __init__(self, csv_files, prompts, llm_helper, using_code=False, max_examples=10, max_attempts=10):
        """
        Initialize the experiment with the given parameters.

        Args:
            csv_files (list): List of CSV file paths.
            prompts (dict): Dictionary of prompt templates.
            llm_helper (object): Initialized LLM helper (OpenAIHelper or HuggingFaceHelper).
            using_code (bool, optional): Whether to use code generation. Defaults to False.
            max_examples (int, optional): Maximum number of examples to process. Defaults to 10.
            max_attempts (int, optional): Maximum number of generalization attempts. Defaults to 10.
        """
        self.csv_files = csv_files
        self.prompts = prompts
        self.llm_helper = llm_helper
        self.using_code = using_code
        self.max_examples = max_examples
        self.max_attempts = max_attempts
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
        with open(file_path, 'r') as file:
            reader = csv.reader(file)
            next(reader)  # Skip the header row
            for example_id in range(self.max_examples):
                row = next(reader)
                con = row[12]
                # Preprocess format of constraints
                con = con.replace("CONST_", "").replace(" &&", ",").replace("CONSTRAINT N/A", "None")
                constraints.append(con.strip())
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

        prompt_get_gen += "\n\nBelow is the source code for the SPF problem:\n"
        prompt_get_gen += source_code




        for example_id in range(self.max_examples):
            prompt_get_gen += f"\n\nValid constraints for {example_id + 1} inputs (N={example_id + 1}):\n"
            prompt_get_gen += str(constraints[example_id])
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
            return generalisation
        else:
            return None

    def evaluate_and_update_generalisation(self, constraints, generalisation, llm_get_gen, convo_stats, file_path):
        """
        Evaluate the generalisation and update it based on feedback.

        Args:
            constraints (list): List of constraints.
            generalisation (str): The current generalisation.
            llm_get_gen (list): The LLM conversation history.
            convo_stats (dict): Dictionary to store conversation statistics.
            file_path (str): The path to the CSV file.
        """
        for attempt_id in range(self.max_attempts):
            self.conversation_handler.print_and_save(" " * 20 + f"ATTEMPT NUMBER {attempt_id + 1}")
            eval_results = []
            test_name = file_path.split("/")[-1][:-4]
            test_path = "generals/" + str(test_name)
            test_path = test_path + ".py" if self.using_code else test_path + ".txt"
            with open(test_path, "w") as file:
                file.write(generalisation)

            for example_id in range(self.max_examples):
                # Apply the generalisation to each N
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

                # Compare predicted constraints with actual constraints
                expected_constraints = constraints[example_id]
                matches = self.compare_constraints(expected_constraints, predicted_constraints)

                eval_results.append({
                    "example_id": example_id + 1,
                    "expected": expected_constraints,
                    "predicted": predicted_constraints,
                    "matches": matches
                })

            # Check if all predictions were correct
            true_matches = [example_eval["matches"] for example_eval in eval_results]
            if False not in true_matches:
                # All predictions match
                convo_stats["succeeded"] = True
                convo_stats["attempts"] = attempt_id + 1
                convo_stats["examples_right"] = self.max_examples
                break

            # Break if this was the last attempt at generalising
            if attempt_id + 1 == self.max_attempts:
                convo_stats["succeeded"] = False
                convo_stats["attempts"] = attempt_id + 1
                convo_stats["examples_right"] = sum(true_matches)
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

    def compare_constraints(self, expected_constraints, predicted_constraints):
        """
        Compare expected and predicted constraints using the LLM.

        Args:
            expected_constraints (str): The expected constraints.
            predicted_constraints (str): The predicted constraints from the LLM.

        Returns:
            bool: True if constraints match, False otherwise.
        """
        compare_sys = [{"role": "system", "content": self.prompts["compare_sys"]}]

        prompt_compare = self.prompts["compare_start"] + "\nYOUR CONSTRAINTS:\n" + \
            predicted_constraints + "\n\nSPF CONSTRAINTS:\n" + expected_constraints

        self.conversation_handler.print_and_save(prompt_compare)

        # Update conversation history
        compare_sys.append({"role": "user", "content": prompt_compare})

        response_compare = self.llm_helper.get_response(history=compare_sys)
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
        for result in eval_results:
            prompt_get_gen += f"\nN={result['example_id']}:\n"
            prompt_get_gen += f"Expected constraints:\n{result['expected']}\n"
            prompt_get_gen += f"Your generalisation's constraints:\n{result['predicted']}\n"
        prompt_get_gen = prompt_get_gen.strip()
        return prompt_get_gen

    def save_results(self, file_path, convo_stats):
        """
        Save the conversation and statistics to files.

        Args:
            file_path (str): The path to the CSV file.
            convo_stats (dict): Conversation statistics.
        """
        file_name = file_path.split("/")[-1][:-4]
        # Save conversation log
        with open(f"saved_logs/{file_name}-log.txt", "w") as file:
            file.write("".join(self.conversation_handler.conversation))
        self.experiment_stats[file_name] = convo_stats

        # Save individual statistics
        with open("individual_stats.json", "w") as file:
            json.dump(self.experiment_stats, file)

# Define prompts
prompts = {
    "get_gen_sys_code": "Always respond first with an informal analysis in natural language and maybe some mathematics (under the heading 'CASUAL', all caps), then with a formal Python program answer inside a code block (under the heading 'FORMAL', all caps). Make sure there is only one code block in your answer.",
    "get_gen_sys_llm": "Always respond first with an informal analysis in natural language (under the heading 'CASUAL', all caps), then with a formal/mathematical answer (under the heading 'FORMAL', all caps). Make no further comments after the formal section like 'This should hold true', for example.",
    "get_gen_start": "I'm experimenting with a program and trying to find what makes an increasingly large set of inputs valid. So far I have found one possible set of correct constraints/conditions (not the only one) which define a valid input. Here they are.",
    "get_gen_end": "\n\nGeneralise what makes the set of constraints valid such that we can recover a valid set for N inputs. Don't overfit the data here but also don't oversimplify to the point of trivialness. Make sure none of the given examples contradict your generalisation.",
    "get_gen_end_code1": "\n\nUse this code template to formally express the generalisation for N constraints:\n```python\n",
    "get_gen_end_code2": "```\n\nEach inequality is usually in the form \"x op y\" where x, y are some variable, constant or some formula of variables and/or constants, and op is an operation or inequality.",
    "apply_gen_sys": "Always respond first with a step-by-step application of the generalisation (under the heading 'WORKING OUT', all caps), then with the final answer (under the heading 'ANSWER', all caps), giving the answer as a comma-separated list of constraints without any other natural language like 'here is the set'. If the answer is the empty set just put 'None' as the answer. Make no further comments after the answer section like 'This is what the generalisation says should hold', for example, just stop.",
    "apply_gen_start": "I have a generalisation defining a set of inequalities for a set of variables. The definition is general for an arbitrary N amount of variables. Here is the generalisation:\n\n```\n",
    "compare_sys": "Always respond first with your thinking process (under the heading 'THINKING', all caps), then with the final answer of 'MATCHES' (all caps) if matches or 'DIFFERENT' (all caps) if doesn't match (under the heading 'ANSWER', all caps), then reiterate the place/reason it does not match (under the heading 'REASON', all caps).",
    "compare_start": "I have two sets of inequalities over variables. Tell me if these two sets are the same or not, and how they differ if they do. Ignore the order of constraints and differences in formatting (e.g., spaces, newline characters, and exact variable names like 's_0', 's0', 's(0)', '{s_0}' are all the same), though the numbers associated with variable names should be the same. 'There are no constraints' or 'None' is equivalent to the empty set. If the only difference between the two is formatting, then they actually match. They're only different if one set is bigger than the other or if they contain constraints that aren't in the other. Try to keep your final reasons short but not generic and without using bullet points or numbered lists.\n\n",
    "new_gen_start_code": "I have run your code for several concrete values of N. Some of the outputs were not correct. Change your generalisation and code to account for the following outputs. Remember to always structure your reply with the headings 'CASUAL' and 'FORMAL'.\n\n",
    "new_gen_start_llm": "Remember to always structure your reply with the same headings. I have applied your generalisation for several concrete values of N. Some of the outputs were not correct. Change your generalisation to account for the following outputs. Remember to always structure your reply with the headings 'CASUAL' and 'FORMAL'.\n\n",
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
	"../Dataset/spf_output/ComplexFlipPos_1/verbose/heuristic/own.ComplexFlipPos_1.csv",
	"../Dataset/spf_output/ComplexFlipPos_2/verbose/heuristic/own.ComplexFlipPos_2.csv",
	"../Dataset/spf_output/ComplexHalfEqual/verbose/heuristic/own.ComplexHalfEqual.csv",
	"../Dataset/spf_output/ComplexMidPeak/verbose/heuristic/own.ComplexMidPeak.csv",
	"../Dataset/spf_output/ComplexPalindrome/verbose/heuristic/own.ComplexPalindrome.csv",
	"../Dataset/spf_output/ComplexOddsEvens/verbose/heuristic/own.ComplexOddsEvens.csv",
]
load_dotenv()
os.environ["TOKENIZERS_PARALLELISM"] = "false"

USE_OPENAI = True  # Set to False if using HuggingFace model

if USE_OPENAI:
    llm_helper = OpenAIHelper(
        api_key=os.getenv("OPENAI_KEY"),
        model=os.getenv("OPENAI_MODEL")
    )
else:
    llm_helper = HuggingFaceHelper(
        model_name=os.getenv("HUGGINGFACE_MODEL"),
        hf_token=os.getenv("HUGGINGFACE_TOKEN")
    )

# Set constants
USING_CODE = False
MAX_EXAMPLES = 10
MAX_ATTEMPTS = 10

# Run the experiment
experiment = Experiment(
    csv_files=csv_files,
    prompts=prompts,
    llm_helper=llm_helper,
    using_code=USING_CODE,
    max_examples=MAX_EXAMPLES,
    max_attempts=MAX_ATTEMPTS,
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
with open("overall_stats.json", "w") as file:
    json.dump(overall_stats, file)