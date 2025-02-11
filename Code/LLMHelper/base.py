from abc import ABC, abstractmethod
from typing import List, Dict, Any

class BaseLLMHelper(ABC):
    """
    Abstract base class for LLM helpers.
    """

    @abstractmethod
    def get_response(self, history: List[Dict[str, str]], **kwargs) -> Dict[str, Any]:
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

    @abstractmethod
    def _setup_model(self) -> None:
        """
        Abstract method to setup the language model.
        """
        pass
