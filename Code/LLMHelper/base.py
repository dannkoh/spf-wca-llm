# llm_helpers/base.py

from abc import ABC, abstractmethod

class BaseLLMHelper(ABC):
    """
    Abstract base class for LLM helpers.
    """

    @abstractmethod
    def get_response(self, history, prompt, model=None):
        """
        Abstract method to get a response from the language model.

        Args:
            history (list): The chat history for context.
            prompt (str): The prompt to send to the model.
            model (str, optional): The model to use.

        Returns:
            dict or int: The response from the API, or an error code.
        """
        pass