import openai
import time
from LLMHelper.base import BaseLLMHelper

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