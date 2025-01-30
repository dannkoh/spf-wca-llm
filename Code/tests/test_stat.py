import unittest
from unittest.mock import MagicMock
from main import Experiment

class TestStats(unittest.TestCase):
    def setUp(self):
        self.experiment = Experiment(
            directories=["test_directory"],
            prompts={},
            llm_helper=MagicMock(),
            resultsFolder="test_results",
            max_examples=3
        )
        # Initialize empty stats for testing
        self.experiment.overall_stats = {
            "succeeded": 0,
            "failed": 0,
            "average_attempts": 0.0,
            "max_attempts": 0,
            "average_examples_right": 0.0,
            "max_examples_right": 0
        }

    def test_individual_stats_all_success(self):
        success = {
            1: {"equivalent": True, "expected": "e1", "predicted": "p1"},
            2: {"equivalent": True, "expected": "e2", "predicted": "p2"},
            3: {"equivalent": True, "expected": "e3", "predicted": "p3"}
        }
        stats = self.experiment._calculate_individual_stats("test_problem", success, 1)
        self.assertTrue(stats["succeeded"])
        self.assertEqual(stats["examples_right"], 3)
        self.assertEqual(stats["attempts"], 1)

    def test_individual_stats_all_failure(self):
        success = {
            1: {"equivalent": False, "expected": "e1", "predicted": "p1"},
            2: {"equivalent": False, "expected": "e2", "predicted": "p2"},
            3: {"equivalent": False, "expected": "e3", "predicted": "p3"}
        }
        stats = self.experiment._calculate_individual_stats("test_problem", success, 1)
        self.assertFalse(stats["succeeded"])
        self.assertEqual(stats["examples_right"], 0)

    def test_individual_stats_partial_success(self):
        success = {
            1: {"equivalent": True, "expected": "e1", "predicted": "p1"},
            2: {"equivalent": False, "expected": "e2", "predicted": "p2"},
            3: {"equivalent": True, "expected": "e3", "predicted": "p3"}
        }
        stats = self.experiment._calculate_individual_stats("test_problem", success, 2)
        self.assertFalse(stats["succeeded"])
        self.assertEqual(stats["examples_right"], 2)
        self.assertEqual(stats["attempts"], 2)

    def test_individual_stats_empty_dict(self):
        stats = self.experiment._calculate_individual_stats("test_problem", {}, 1)
        self.assertFalse(stats["succeeded"])
        self.assertEqual(stats["examples_right"], 0)

    def test_individual_stats_missing_keys(self):
        success = {
            1: {"predicted": "p1"},
            2: {"equivalent": True},
            3: {}
        }
        stats = self.experiment._calculate_individual_stats("test_problem", success, 1)
        self.assertFalse(stats["succeeded"])
        self.assertEqual(stats["examples_right"], 1)

    def test_overall_stats_first_entry(self):
        stats = self.experiment._calculate_overall_stats({}, True, 1, 3)
        self.assertEqual(stats["succeeded"], 1)
        self.assertEqual(stats["failed"], 0)
        self.assertEqual(stats["average_attempts"], 1.0)
        self.assertEqual(stats["average_examples_right"], 3.0)

    def test_overall_stats_running_average(self):
        initial = {
            "succeeded": 2,
            "failed": 1,
            "average_attempts": 2.0,
            "max_attempts": 2,
            "average_examples_right": 2.0,
            "max_examples_right": 2
        }
        stats = self.experiment._calculate_overall_stats(initial, True, 3, 1)
        self.assertEqual(stats["succeeded"], 3)
        self.assertEqual(stats["failed"], 1)
        self.assertEqual(stats["average_attempts"], 2.25)
        self.assertEqual(stats["average_examples_right"], 1.75)
        self.assertEqual(stats["max_attempts"], 3)

    def test_overall_stats_all_failures(self):
        initial = {
            "succeeded": 0,
            "failed": 2,
            "average_attempts": 1.5,
            "max_attempts": 2,
            "average_examples_right": 1.0,
            "max_examples_right": 1
        }
        stats = self.experiment._calculate_overall_stats(initial, False, 3, 0)
        self.assertEqual(stats["succeeded"], 0)
        self.assertEqual(stats["failed"], 3)
        self.assertEqual(stats["average_attempts"], 2.0)
        self.assertAlmostEqual(stats["average_examples_right"], 0.67, places=2)
        self.assertEqual(stats["max_attempts"], 3)

    def test_overall_stats_perfect_scores(self):
        stats = {}
        for _ in range(3):
            stats = self.experiment._calculate_overall_stats(
                stats, True, 1, self.experiment.max_examples
            )
        self.assertEqual(stats["succeeded"], 3)
        self.assertEqual(stats["failed"], 0)
        self.assertEqual(stats["average_attempts"], 1.0)
        self.assertEqual(stats["average_examples_right"], 3.0)
        self.assertEqual(stats["max_examples_right"], 3)

    def test_overall_stats_max_values(self):
        stats = {}
        # Test increasing attempts
        for i in range(1, 4):
            stats = self.experiment._calculate_overall_stats(stats, True, i, 1)
        self.assertEqual(stats["max_attempts"], 3)
        
        # Test max examples right
        stats = self.experiment._calculate_overall_stats(stats, True, 1, 3)
        self.assertEqual(stats["max_examples_right"], 3)

if __name__ == '__main__':
    unittest.main()