import unittest
from main import Experiment

class TestValidPython(unittest.TestCase):

    def test_validPython_base(self):
        valid_code = "def generate_constraints(N):\n    return '(assert (> x 0))'"
        invalid_code = "def generate_constraints(N):\n    return (assert (> x 0))"
        self.assertTrue(Experiment.validPython(valid_code))
        self.assertFalse(Experiment.validPython(invalid_code))

    def test_validPython_none(self):
        data="""
def generate_constraints(N):
    return None
"""
        self.assertTrue(Experiment.validPython(data))

    def test_validPython_empty(self):
        data="""
def generate_constraints(N):
    return ''
"""
        self.assertTrue(Experiment.validPython(data))
    
    def test_validPython_invalid1(self):
        data="""
def generate_constraints(N):
    return (assert (> x 0))
"""
        self.assertFalse(Experiment.validPython(data))
    
    def test_validPython_invalid2(self):
        data="""
def generate_constraints(N):
    return constraints
"""
        self.assertFalse(Experiment.validPython(data))


if __name__ == "__main__":
    unittest.main()
