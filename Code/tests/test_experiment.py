import unittest
from unittest.mock import patch, MagicMock
import os
from main import ConversationHandler, Experiment

class TestExperiment(unittest.TestCase):

    
    def setUp(self):
        self.directories = ["test_directory"]
        self.prompts = {
            "get_gen_sys": "System prompt",
            "get_gen_start": "Start prompt",
            "get_gen_end": "End prompt",
            "get_gen_end1": "End1 prompt",
            "get_gen_end2": "End2 prompt",
            "get_gen_format": "Format prompt",
            "get_gen_feedback": "Feedback prompt"
        }
        self.llm_helper = MagicMock()
        self.resultsFolder = "test_results"
        self.experiment = Experiment(
            directories=self.directories,
            prompts=self.prompts,
            llm_helper=self.llm_helper,
            resultsFolder=self.resultsFolder
        )


    @patch("builtins.open", new_callable=unittest.mock.mock_open, read_data="source code")
    def test_get_source_file(self, mock_open):
        filepath = "test.java"
        source_code = self.experiment.get_source_file(filepath)
        self.assertIn("source code", source_code)

    @patch("glob.glob", return_value=["tests/test/own.test_1.smt2"])
    @patch("builtins.open", new_callable=unittest.mock.mock_open, read_data="(declare-const x Int)\n(assert (> x 0))")
    def test_get_constraints_from_smt_files(self, mock_open, mock_glob):
        constraints = self.experiment.get_constraints_from_smt_files("tests/test")
        self.assertIn(1, constraints)
        self.assertIn("(declare-const x Int)", constraints[1]["constants"])
        self.assertIn("(assert (> x 0))", constraints[1]["assertions"])

    # need to mock the max shown examples variable in the experiment class
    def test_generate_initial_prompt(self):
        self.experiment.max_shown_examples = 1
        constraints = {1: {"assertions": ["(assert (> x 0))"]}}
        source_code = "source code"
        prompt = self.experiment.generate_initial_prompt(constraints, source_code)
        self.assertIn("(assert (> x 0))", prompt)
        self.assertIn("source code", prompt)

    @patch("subprocess.run")
    def test_instantiate_generalisation(self, mock_subprocess):
        mock_subprocess.return_value.stdout = "N=(assert (> x 0))"
        result = self.experiment.instantiate_generalisation("test_file.py", 1)
        self.assertEqual(result, "(assert (> x 0))")

    @patch("subprocess.run")
    @patch("os.makedirs")
    @patch("builtins.open", new_callable=unittest.mock.mock_open)
    def test_check_logical_equivalence(self, mock_open, mock_makedirs, mock_subprocess):
        self.experiment.conversation_handler = MagicMock()
        mock_subprocess.return_value.stdout = "unsat\nunsat"
        original_assertions = {"constants": ["(declare-const x Int)"], "assertions": ["(assert (> x 0))"]}
        generated_assertions = "(assert (> x 0))"
        result = self.experiment.check_logical_equivalence("test_problem", 1, original_assertions, generated_assertions)
        self.assertTrue(result["result"])

    @patch("builtins.open", new_callable=unittest.mock.mock_open)
    def test_save_logs(self, mock_open):
        self.experiment.conversation_handler = ConversationHandler()
        self.experiment.conversation_handler.print_and_save("Test log")
        self.experiment.save_logs("test_problem")
        mock_open.assert_called_with(os.path.join(self.experiment.logs_dir, "test_problem-log.txt"), "w")

if __name__ == "__main__":
    unittest.main()