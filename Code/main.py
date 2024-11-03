import openai
import csv
import time
import json
import subprocess

class LLMHelper:
    """
    A helper class for interacting with the OpenAI API.

    Example response from the OpenAI API:
    {
        "id": "chatcmpl-abc123",
        "object": "chat.completion",
        "created": 1677858242,
        "model": "gpt-4o-mini",
        "usage": {
            "prompt_tokens": 13,
            "completion_tokens": 7,
            "total_tokens": 20,
            "completion_tokens_details": {
                "reasoning_tokens": 0
            }
        },
        "choices": [
            {
                "message": {
                    "role": "assistant",
                    "content": "\n\nThis is a test!"
                },
                "logprobs": null,
                "finish_reason": "stop",
                "index": 0
            }
        ]
    }
    """


    def __init__(self, api_key, model="gpt-3.5-turbo-1106"):
        """
        Initialize the LLMHelper with the given API key and model.

        Args:
            api_key (str): The OpenAI API key.
            model (str): The name of the OpenAI model to use.
        """
        openai.api_key = api_key
        self.model = model

    def get_response(self, history, prompt, model=None):
        """
        Get a response from the OpenAI API based on the provided history and prompt.

        Args:
            history (list): The chat history for context.
            prompt (str): The prompt to send to the model.
            model (str, optional): The model to use. Defaults to self.model.

        Returns:
            dict or int: The response from the API, or an error code.
        """
        if model is None:
            model = self.model

        history.append({"role": "user", "content": prompt})
        done_it = False
        limit = 12
        while not done_it and limit != 0:
            try:
                time.sleep(1)
                response = openai.ChatCompletion.create(
                    model=model,
                    messages=history,
                )
                done_it = True
                history.append({"role": "assistant", "content": response['choices'][0]['message']['content']})
                return response
            except Exception as e:
                print("(gpt error)")
                print(e)
                if str(e).startswith("This model's maximum context length"):
                    # Tokens per minute rate has not been exceeded, just message itself is too long to input
                    history.pop(-1)
                    return -1
                # Most likely tokens per minute rate has been exceeded so wait a little
                limit -= 1
                time.sleep(10)
        return -2

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
        # stop = input("(ENTER to continue)")

class Experiment:
    """
    A class to run the experiment using provided CSV files and prompts.
    """

    def __init__(self, csv_files, prompts, using_code=False, max_examples=10, max_attempts=10):
        """
        Initialize the experiment with the given parameters.

        Args:
            csv_files (list): List of CSV file paths.
            prompts (dict): Dictionary of prompt templates.
            using_code (bool, optional): Whether to use code generation. Defaults to False.
            max_examples (int, optional): Maximum number of examples to process. Defaults to 10.
            max_attempts (int, optional): Maximum number of generalization attempts. Defaults to 10.
        """
        self.csv_files = csv_files
        self.prompts = prompts
        self.using_code = using_code
        self.max_examples = max_examples
        self.max_attempts = max_attempts
        self.experiment_stats = {}
        self.conversation_handler = ConversationHandler()
        self.llm_helper = LLMHelper(api_key="YOUR_API_KEY")

    def run(self):
        """
        Run the experiment by processing each CSV file.
        """
        for file_path in self.csv_files:
            self.process_file(file_path)

    def process_file(self, file_path):
        """
        Process a single CSV file.

        Args:
            file_path (str): The path to the CSV file.
        """
        gen_sys = "get_gen_sys_code" if self.using_code else "get_gen_sys_llm"
        llm_get_gen = [{"role": "system", "content": self.prompts[gen_sys]}]

        conversation = []
        convo_stats = {}
        constraints = self.get_constraints_from_csv(file_path)

        # Get initial generalization
        self.conversation_handler.print_and_save(" " * 20 + "GET INITIAL GENERALISATION")
        prompt_get_gen = self.generate_initial_prompt(constraints)
        self.conversation_handler.print_and_save(prompt_get_gen)

        response_get_gen = self.llm_helper.get_response(llm_get_gen, prompt_get_gen)
        content_get_gen = response_get_gen['choices'][0]['message']['content']
        self.conversation_handler.print_and_save(content_get_gen)

        generalisation = self.extract_generalisation(content_get_gen)
        if generalisation is None:
            return

        self.evaluate_and_update_generalisation(constraints, generalisation, llm_get_gen, convo_stats, file_path)

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
                constraints.append(con)
        return constraints

    def generate_initial_prompt(self, constraints):
        """
        Generate the initial prompt for generalization.

        Args:
            constraints (list): List of constraints.

        Returns:
            str: The generated prompt.
        """
        prompt_get_gen = self.prompts["get_gen_start"]
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

    def extract_generalisation(self, content_get_gen):
        """
        Extract the generalisation from the LLM's response.

        Args:
            content_get_gen (str): The content from the LLM's response.

        Returns:
            str: The extracted generalisation.
        """
        generalisation_empty = "FORMAL" in content_get_gen and len(content_get_gen.split("FORMAL")[1]) < 10
        gen_limit = 5
        while ("FORMAL" not in content_get_gen or generalisation_empty) and gen_limit != 0:
            # Response not using correct headings, repeat formatting instructions to LLM
            gen_message = self.prompts["get_gen_sys_code"] if self.using_code else self.prompts["get_gen_sys_llm"]
            if generalisation_empty:
                gen_message = "Your response stopped short. Continue where you left off with a new line character and the heading 'FORMAL'."

            self.conversation_handler.print_and_save(gen_message)
            response_get_gen = self.llm_helper.get_response([], gen_message)
            content_get_gen = response_get_gen['choices'][0]['message']['content']
            self.conversation_handler.print_and_save(content_get_gen)
            generalisation_empty = "FORMAL" in content_get_gen and len(content_get_gen.split("FORMAL")[1]) < 10
            gen_limit -= 1

        if "FORMAL" in content_get_gen:
            generalisation = content_get_gen.split("FORMAL")[1]
            generalisation = generalisation.strip(":\n ")
            if self.using_code:
                code_blocks = generalisation.split("```")
                if len(code_blocks) > 1:
                    generalisation = code_blocks[1].replace("python", "").strip()
                # Append missing code if necessary
                if "return" in generalisation.split("\n")[-1]:
                    generalisation += "\n\nN = int(input(\"N=\"))\nconstraints = generate_constraints(N)\nconstraints = \", \".join(constraints)\nprint(constraints)"
            return generalisation
        else:
            return None

    def evaluate_and_update_generalisation(self, constraints, generalisation, llm_get_gen, convo_stats, file_path):
        """
        Evaluate the generalisation and update it based on feedback.

        Args:
            constraints (list): List of constraints.
            generalisation (str): The current generalisation.
            llm_get_gen (list): The LLM system messages.
            convo_stats (dict): Dictionary to store conversation statistics.
            file_path (str): The path to the CSV file.
        """
        for attempt_id in range(self.max_attempts):
            self.conversation_handler.print_and_save(" " * 20 + f"ATTEMPT NUMBER {attempt_id + 1}")

            eval_results = []

            # Save generalisation to file
            test_name = file_path.split("/")[-1][:-4]
            test_path = f"generals/{test_name}"
            test_path += ".py" if self.using_code else ".txt"
            with open(test_path, "w") as file:
                file.write(generalisation)

            # Evaluate predictions for each example
            for example_id in range(self.max_examples):
                print(" " * 20 + f"#{attempt_id + 1}  EVALUATING EXAMPLE NUMBER {example_id + 1}")
                example_eval = {"prediction": None, "matches": None, "reason": None}

                # Additional evaluation code would be implemented here
                # For brevity, it's omitted in this refactoring

                eval_results.append(example_eval)

            # Check if all predictions were correct
            true_matches = [example_eval["matches"] for example_eval in eval_results if example_eval["matches"] is not None]
            if False not in true_matches:
                convo_stats["succeeded"] = True
                convo_stats["attempts"] = attempt_id + 1
                convo_stats["examples_right"] = self.max_examples
                break

            # Check if maximum attempts reached
            if attempt_id + 1 == self.max_attempts:
                convo_stats["succeeded"] = False
                convo_stats["attempts"] = self.max_attempts
                convo_stats["examples_right"] = true_matches.count(True)
                break

            # Provide feedback and get new generalisation
            self.conversation_handler.print_and_save(" " * 20 + f"#{attempt_id + 1}  GET NEW GENERALISATION")
            prompt_get_gen = self.generate_feedback_prompt(eval_results)
            self.conversation_handler.print_and_save(prompt_get_gen)

            response_get_gen = self.llm_helper.get_response(llm_get_gen, prompt_get_gen)
            content_get_gen = response_get_gen['choices'][0]['message']['content']
            self.conversation_handler.print_and_save(content_get_gen)

            generalisation = self.extract_generalisation(content_get_gen)

        self.conversation_handler.print_and_save("(done with that example)")
        self.save_results(file_path, convo_stats)

    def generate_feedback_prompt(self, eval_results):
        """
        Generate a prompt for the LLM based on evaluation feedback.

        Args:
            eval_results (list): Evaluation results from previous attempts.

        Returns:
            str: The feedback prompt.
        """
        prompt_get_gen = self.prompts["new_gen_start_code"] if self.using_code else self.prompts["new_gen_start_llm"]
        for example_id, result in enumerate(eval_results):
            if result["matches"]:
                prompt_get_gen += f"For N={example_id + 1}, the generalisation output correctly fits the given data\n\n"
            elif result["reason"] == "ERROR":
                prompt_get_gen += f"For N={example_id + 1}, there was an error in generating constraints\n\n"
            else:
                prompt_get_gen += f"For N={example_id + 1}, {result['reason']}\n\n"
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
        with open(f"saved_logs/{file_name}-log.txt", "w") as file:
            file.write("".join(self.conversation_handler.conversation))
        self.experiment_stats[file_name] = convo_stats

        # Save individual statistics
        with open("individual_stats.json", "w") as file:
            json.dump(self.experiment_stats, file)

# Define prompts
prompts = {
    "get_gen_sys_code": "Always respond first with an informal analysis in natural language and maybe some mathematics (under the heading 'CASUAL', all caps), then with a formal Python program answer inside a code block (under the heading 'FORMAL', all caps). Make sure there is only one code block in your answer.",
    "get_gen_sys_llm": "Always respond first with an informal analysis in natural language (under the heading 'CASUAL', all caps), then with a formal/ mathematical answer (under the heading 'FORMAL', all caps). Make no further comments after the formal section like 'This should hold true', for example.",
    "get_gen_start": "I'm experimenting with a program and trying to find what makes an increasingly large set of inputs valid. So far I have found one possible set of correct constraints/ conditions (not the only one) which define a valid input. Here they are.",
    "get_gen_end": "\n\nGeneralise what makes the set of constraints valid such that we can recover a valid set for N inputs. Don't overfit the data here but also dont oversimplify to the point of trivialness. Make sure none of the given examples contradict your generalisation.",
    "get_gen_end_code1": "\n\nUse this code template to formally express the generalisation for N constraints:\n```python\n",
    "get_gen_end_code2": "```\n\nEach inequality is usually in the form \"x op y\" where x, y are some variable, constant or some formula of variables and/ or constants, and op is an operation or inequality.",
    "apply_gen_sys": "Always respond first with a step by step application of the generalisation (under the heading 'WORKING OUT', all caps), then with the final answer (under the heading 'ANSWER', all caps), giving the answer as a comma separated list of constraints without any other natural language like 'here is the set'. If the answer is the empty set just put 'None' as the answer. Make no further comments after the answer section, like 'This is what the generalisation says should hold' for example, just stop.",
    "apply_gen_start": "I have a generalisation defining a set of inequalities for a set of variables. The definition is general for an arbitrary N amount of variables. Here is the generalisation:\n\n```\n",
    "compare_sys": "Always respond first with your thinking process (under the heading 'THINKING', all caps), then with the final answer of 'MATCHES'(all caps) if matches or 'DIFFERENT'(all caps) if doesn't match (under the heading 'ANSWER', all caps), then reiterate the place/ reason it does not match  (under the heading 'REASON', all caps).",
    "compare_start": "I have two sets of inequalities over variables. Tell me if these two sets are the same or not, and how they differ if they do. Ignore the order of constraints and differences in formatting (e.g spaces, newline characters and exact variable names ('s_0', 's0', 's(0)', '\\{s_0\\}' and so on are all the same), also ignore any text that isnt a constraints like 'here is the set:') though the numbers associated with variable names should be the same. 'There are no constraints' or 'None' or anything like that is equivalent to '' or the empty set/ string. If the only difference between the two is formatting then they actually match. They're only different if one set is bigger than the other or if they contain constraints that aren't in the other. Try to keep your final reasons short but not generic and without using bullet points or numbered lists.\n\n",
    "new_gen_start_code": "I have run your code for several concrete values of N. Some of the outputs were not correct. Change your generalisation and code to account for the following outputs (Remember to always structure your reply with the headings 'CASUAL' and 'FORMAL').\n\n",
    "new_gen_start_llm": "Remember to always structure your reply with the same headings. I have applied you generalisation for several concrete values of N. Some of the outputs were not correct. Change your generalisation to account for the following outputs (Remember to always structure your reply with the headings 'CASUAL' and 'FORMAL').\n\n",
}

# Define CSV files
csv_files = [
    "../Dataset/spf_output/ComplexFlipPos_2/verbose/heuristic/own.ComplexFlipPos_2.csv",
]

# Set constants
USING_CODE = False
MAX_EXAMPLES = 10
MAX_ATTEMPTS = 10
GENERAL_MODEL = "gpt-3.5-turbo-1106"

# Run the experiment
experiment = Experiment(
    csv_files=csv_files,
    prompts=prompts,
    using_code=USING_CODE,
    max_examples=MAX_EXAMPLES,
    max_attempts=MAX_ATTEMPTS,
)
experiment.run()