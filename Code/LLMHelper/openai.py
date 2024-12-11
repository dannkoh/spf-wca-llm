import openai
import time
from LLMHelper.base import BaseLLMHelper
from tqdm import tqdm
import sys

class OpenAIHelper(BaseLLMHelper):
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


    def __init__(self, api_key, model):
        """
        Initialize the LLMHelper with the given API key and model.

        Args:
            api_key (str): The OpenAI API key.
            model (str): The name of the OpenAI model to use.
        """
        openai.api_key = api_key
        self.model = model

    def get_response(self, history, model=None):
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

        done_it = False
        limit = 12
        while not done_it and limit != 0:
            try:
                time.sleep(1)
                response = openai.chat.completions.create(
                    model=model,
                    messages=history,
                )
                done_it = True
                return response
            except openai.BadRequestError as e:
                if "maximum context length" in str(e):
                    # Try to reduce context by keeping only the last few messages
                    if len(history) > 4:  # Keep system prompt + last few exchanges
                        history = [history[0]] + history[-3:]  # System prompt + last 3 messages
                        continue
                    return {"choices": [{"message": {"content": "Error: Context too long even after reduction"}}]}
            except openai.RateLimitError as e:
                wait_time = 60
                print(f"Rate limit exceeded, waiting {wait_time} seconds")
                print(e)
                limit -= 1
                for _ in tqdm(range(wait_time), desc="Waiting", unit="s"):
                    time.sleep(1)
                print("Retrying...")
                continue
            except Exception as e:
                print(f"An unexpected error occurred: {e}")
                return {"choices": [{"message": {"content": f"Error: {str(e)}"}}]}
        return {"choices": [{"message": {"content": "Error: Max retries exceeded"}}]}