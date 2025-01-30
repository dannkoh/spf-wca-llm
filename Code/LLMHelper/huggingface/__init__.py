from abc import abstractmethod
from LLMHelper.base import BaseLLMHelper
from typing import Any, Dict, Type

class BaseHuggingFaceModel(BaseLLMHelper):
    """Base class for HuggingFace models"""

    def __init__(self, model_name: str, token: str):
        self.model_name = model_name
        self.token = token
        self.device = "auto"
        self._setup_model()

    @abstractmethod
    def _setup_model(self) -> None:
        pass

    @abstractmethod
    def _process_response(self, response: Any) -> str:
        """Process model specific response format"""
        pass


class HuggingFaceModelFactory:
    """Factory for creating LLM instances"""

    _models: Dict[str, Type[BaseLLMHelper]] = {}

    @classmethod
    def register(cls, model_name: str, model_class):
        cls._models[model_name] = model_class

    @classmethod
    def create(cls, model_name: str, **kwargs) -> BaseLLMHelper:
        if model_name not in cls._models:
            raise ValueError(f"Unknown model: {model_name}")
        return cls._models[model_name](**kwargs)
