import unittest
from unittest.mock import patch, MagicMock
from LLMHelper import OpenAIHelper, HuggingFaceHelper, ResponseLLMHelper
import openai

class TestOpenAIHelper(unittest.TestCase):
    def setUp(self):
        self.helper = OpenAIHelper("test_key", "gpt-4")

    @patch('openai.chat.completions.create')
    def test_rate_limit_handling(self, mock_create):
        mock_create.side_effect = openai.RateLimitError(
            message="Rate limit exceeded",
            response=MagicMock(status_code=429),
            body={"error": {"message": "Rate limit exceeded"}}
        )
        response = self.helper.get_response([{"role": "user", "content": "test"}], wait_time=0)
        self.assertIn("Error", response.choices[0].message.content)

    @patch('openai.chat.completions.create')
    def test_context_length_handling(self, mock_create):
        mock_create.side_effect = openai.BadRequestError(
            message="maximum context length",
            response=MagicMock(status_code=400),
            body={"error": {"message": "maximum context length"}}
        )
        history = [{"role": "system", "content": "System"}] * 10
        response = self.helper.get_response(history)
        self.assertNotIn("maximum context length", response.choices[0].message.content)

class TestHuggingFaceHelper(unittest.TestCase):
    @patch('transformers.AutoTokenizer.from_pretrained')
    @patch('transformers.AutoModelForCausalLM.from_pretrained')
    def setUp(self, mock_model, mock_tokenizer):
        self.mock_tokenizer = MagicMock()
        self.mock_model = MagicMock()
        
        # Setup mocks
        mock_tokenizer.return_value = self.mock_tokenizer
        mock_model.return_value = self.mock_model
        self.mock_model.generate.return_value = [[1, 2, 3]]
        self.mock_tokenizer.decode.return_value = "test response"
        
        # Create helper with device mocked
        self.helper = HuggingFaceHelper("test_model", "test_token")
        self.helper.device = "cpu"  # Mock device attribute
        self.helper.model = self.mock_model
        self.helper.tokenizer = self.mock_tokenizer

    def test_response_format(self):
        history = [{"role": "user", "content": "test prompt"}]
        response = self.helper.get_response(history)
        self.assertTrue(hasattr(response, 'choices'))
        self.assertEqual(response.choices[0].message.content, "test response")

class TestResponseHelper(unittest.TestCase):
    def test_response_format(self):
        response = ResponseLLMHelper.build_obj("test response")
        self.assertTrue(hasattr(response, 'choices'))
        self.assertTrue(hasattr(response.choices[0], 'message'))
        self.assertTrue(hasattr(response.choices[0].message, 'content'))
        self.assertEqual(response.choices[0].message.content, "test response")

    def test_error_wrapping(self):
        error_msg = "Test error"
        response = ResponseLLMHelper.build_obj(f"Error: {error_msg}")
        self.assertIn(error_msg, response.choices[0].message.content)

if __name__ == '__main__':
    unittest.main()