import unittest
from main import ConversationHandler
import io
import sys

class TestConversationHandler(unittest.TestCase):

    def setUp(self):
        self.handler = ConversationHandler()
        self.held_output = io.StringIO()
        self.original_output = sys.stdout
        sys.stdout = self.held_output

    def test_print_and_save(self):
        message = "Test message"
        self.handler.print_and_save(message)
        self.assertIn(message, [msg.strip() for msg in self.handler.conversation])

    def test_load(self):
        message = "Test message"
        self.handler.load(message)
        self.assertIn(message, [msg.strip() for msg in self.handler.temp])

    def test_push(self):
        message = "Test message"
        self.handler.load(message)
        self.handler.push()
        self.assertIn(message, [msg.strip() for msg in self.handler.conversation])
        self.assertEqual(self.handler.temp, [])

    def test_get_conversation(self):
        message = "Test message"
        self.handler.load(message)
        conversation = self.handler.__getconvesation__()
        self.assertIn(message, [msg.strip() for msg in conversation])

if __name__ == "__main__":
    unittest.main()