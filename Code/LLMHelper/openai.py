import openai
import time
from LLMHelper.base import BaseLLMHelper, ResponseLLMHelper
from tqdm import tqdm

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
        openai.api_key = api_key
        self.model = model
        self.reduction_sizes = [4, 3, 2, 1]




    def _setup_model(self, api_key, model):
        pass


    def _reduce_context(self, history, reduction_index):
        """
        Reduce the context size while maintaining the system prompt.
        
        Args:
            history (list): Current conversation history
            reduction_index (int): Index in reduction_sizes array
            
        Returns:
            tuple: (reduced_history, next_reduction_index, success)
        """
        if reduction_index >= len(self.reduction_sizes):
            return history, reduction_index, False
            
        if len(history) <= 2:  # System prompt + 1 message
            return history, reduction_index, False
            
        current_size = self.reduction_sizes[reduction_index]
        reduced_history = [history[0]] + history[-current_size:]  # System prompt + last N messages
        return reduced_history, reduction_index + 1, True

    def get_response(self, history, model=None, wait_time=60):
        """...existing code..."""
        if model is None:
            model = self.model

        done_it = False
        limit = 12
        reduction_index = 0
        current_history = history.copy()
        
        while not done_it and limit != 0:
            try:
                time.sleep(1)
                response = openai.chat.completions.create(
                    model=model,
                    messages=current_history,
                )
                done_it = True
                return self._process_response(response)
            except openai.BadRequestError as e:
                if "maximum context length" in str(e):
                    print("############################Context too long, reducing context############################")
                    current_history, reduction_index, success = self._reduce_context(current_history, reduction_index)
                    if not success:
                        return "Error: Context too long even after trying all reductions"
                    limit -= 1
                    continue
                return ResponseLLMHelper.build_obj("Error: " + str(e))
            except openai.RateLimitError as e:
                error_msg = str(e)
                if "tokens" in error_msg and "must be reduced" in error_msg:
                    print("############################Token limit exceeded, reducing context############################")
                    current_history, reduction_index, success = self._reduce_context(current_history, reduction_index)
                    if not success:
                        return "Error: Context too long even after trying all reductions"
                    limit -= 1
                    continue
                
                print(f"Rate limit exceeded, waiting {wait_time} seconds")
                print(e)
                limit -= 1
                for _ in tqdm(range(wait_time), desc="Waiting", unit="s"):
                    time.sleep(1)
                print("Retrying...")
                continue
            except Exception as e:
                print(f"An unexpected error occurred: {e}")
                return f"Error: {str(e)}"
        return "Error: Max retries exceeded"


    def _process_response(self, response) -> str:
        """
        Process the response from the OpenAI API.
        """
        try:
            return response.choices[0].message.content
        except Exception as e:
            return f"Error: {str(e)}"