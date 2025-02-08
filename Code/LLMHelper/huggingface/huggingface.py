from LLMHelper.huggingface.__defaulHelper import HuggingFaceModel
from .gemma import GemmaModel

class HuggingFaceModelFactory:
    _registry = {}

    @classmethod
    def register(cls, key: str, constructor):
        cls._registry[key] = constructor

    @classmethod
    def create(cls, model_name: str, token: str, quantization_mode: str = "") -> HuggingFaceModel:
        # Check if the model name indicates a specialized model.
        if model_name.startswith("google/"):
            return GemmaModel(token=token, quantization_mode=quantization_mode, model_name=model_name)
        else:
            # Default to the base model if no specialized mapping found.
            return HuggingFaceModel(token=token, quantization_mode=quantization_mode, model_name=model_name)

# Register default mapping if needed.
HuggingFaceModelFactory.register("default", HuggingFaceModel)
HuggingFaceModelFactory.register("gemma", GemmaModel)