from vllm import LLM, SamplingParams
from LLMHelper.base import BaseLLMHelper
import os
from typing import List, Dict, Any
import torch

os.environ["PYTORCH_CUDA_ALLOC_CONF"] = "expandable_segments:True"

class HuggingFaceModel(BaseLLMHelper):
    """
    A scalable HuggingFace model for Qwen variants.
    """
    def __init__(self, token: str, quantization_mode: str = None, model_name: str = None):
        """
        Args:
            token (str): The access token.
            quantization_mode (str): Quantization setting. Options: "4bit", "8bit", or "" for full precision.
            model_name (str): The model name. Example: "Qwen2.5-Coder-3B", "Qwen2.5-Coder-1.5B", etc.
        """
        if model_name is None or token is None:
            raise ValueError(f"{'token' if token is None else 'model_name'} is required.")
        self.quantization_mode = quantization_mode
        self.token = token
        self.model_name = model_name

        with open("./settings.llm","r") as f:
            settings = f.readlines()
            setting_line = next((s for s in settings if s.startswith(self.model_name)), None)
            if setting_line is None:
                raise ValueError(f"Settings for model {self.model_name} not found.")
            self.max_tokens = int(setting_line.split(",")[1].strip())
        self._setup_model()

    def _setup_model(self) -> None:
        """
        Setup the Qwen model using the given configuration.
        """
        os.environ["HF_TOKEN"]=self.token
        
        self.pipeline = LLM(
            model=self.model_name,
            trust_remote_code=True,
            tensor_parallel_size=int(torch.cuda.device_count()),
            enforce_eager=True,
            dtype='auto',
            quantization="bitsandbytes" if self.quantization_mode == "4bit" else None,
            disable_custom_all_reduce=True,
            max_model_len=84560
        )
        self.sampling_params = SamplingParams(
            max_tokens=self.max_tokens
        )
        self.reduction_sizes = [8, 6, 4, 3, 2, 1]

    def _reduce_context(self, history: List[Dict[str, str]], reduction_index: int):
        """
        Reduce the conversation history while maintaining context relevance.
        """
        if reduction_index >= len(self.reduction_sizes):
            return history, reduction_index, False

        if len(history) <= 2:
            return history, reduction_index, False

        current_size = self.reduction_sizes[reduction_index]
        reduced_history = history[-current_size:]
        if reduction_index == len(self.reduction_sizes) - 1:
            reduced_history = [msg for msg in reduced_history if msg["role"] != "system"]

        return reduced_history, reduction_index + 1, True
        
    def get_response(self, history: List[Dict[str, str]], **kwargs) -> Dict[str, str]:
        limit = 12
        reduction_index = 0
        current_history = history.copy()
        while limit > 0:
            try:
                response = self.pipeline.chat(
                    messages=current_history,
                    sampling_params=self.sampling_params,
                    add_generation_prompt=True,
                    )
                return self.__process_response(response)
            except Exception as e:
                error_msg = str(e)
                if ("CUDA out of memory" in error_msg or
                    "maximum context length" in error_msg or
                    "exceeds max tokens" in error_msg):
                    print("Context too long, reducing conversation history...")
                    if torch.cuda.is_available():
                        torch.cuda.empty_cache()
                    current_history, reduction_index, success = self._reduce_context(current_history, reduction_index)
                    if not success:
                        return "Error: Context too long even after reductions."
                    limit -= 1
                    continue
                else:
                    print(f"Unexpected error: {error_msg}")
                    return f"Error: {error_msg}"
        return "Error: Max retries exceeded."

    def __process_response(self,response) -> str:
        try:
            return response[0].outputs[0].text
        except Exception as e:
            return f"Error: {str(e)}"