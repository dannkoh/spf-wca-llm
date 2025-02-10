import transformers
from LLMHelper.base import ResponseLLMHelper, BaseLLMHelper
import torch
import os
from typing import List, Dict, Any

os.environ["PYTORCH_CUDA_ALLOC_CONF"] = "expandable_segments:True"

class HuggingFaceModel(BaseLLMHelper):
    """
    A scalable HuggingFace model for Qwen variants.
    """
    def __init__(self, token: str, quantization_mode: str = "", model_name: str = None):
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
        self._setup_model()

    def _setup_model(self) -> None:
        """
        Setup the Qwen model using the given configuration.
        """
        self.tokenizer = transformers.AutoTokenizer.from_pretrained(
            self.model_name,
            trust_remote_code=True,
            token=self.token
        )
        
        quantization_config = None
        if self.quantization_mode == "4bit":
            quantization_config = transformers.BitsAndBytesConfig(
                load_in_4bit=True,
                bnb_4bit_compute_dtype=torch.float16,
                bnb_4bit_use_double_quant=True,
                bnb_4bit_quant_type="nf4",
            )
        elif self.quantization_mode == "8bit":
            quantization_config = transformers.BitsAndBytesConfig(
                load_in_8bit=True
            )
        
        model_kwargs = {
            "trust_remote_code": True,
            "torch_dtype": torch.float16,
            "device_map": "auto",
            "token": self.token,
        }
        if quantization_config is not None:
            model_kwargs["quantization_config"] = quantization_config

        model = transformers.AutoModelForCausalLM.from_pretrained(
            self.model_name,
            **model_kwargs
        )
        self.pipeline = transformers.pipeline(
            "text-generation",
            model=model,
            tokenizer=self.tokenizer,
            max_new_tokens=16000,
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

    def _process_response(self, response: Any) -> str:
        try:
            if isinstance(response, str):
                return ResponseLLMHelper.build_obj(response)
            if isinstance(response, list) and 'generated_text' in response[0]:
                messages = response[0]['generated_text']
                if isinstance(messages, list):
                    for msg in messages:
                        if msg.get('role') == 'assistant':
                            return ResponseLLMHelper.build_obj(msg.get('content', ''))
                    return ResponseLLMHelper.build_obj("No assistant response found")
            generated_text = response[0]['generated_text']
            if isinstance(generated_text, str):
                return ResponseLLMHelper.build_obj(generated_text.split("Assistant:")[-1].strip())
            return ResponseLLMHelper.build_obj("Error: Unexpected response format")
        except Exception as e:
            return ResponseLLMHelper.build_obj(f"Error processing response: {str(e)}")
        
    def get_response(self, history: List[Dict[str, str]], **kwargs) -> Dict[str, str]:
        limit = 12
        reduction_index = 0
        current_history = history.copy()
        while limit > 0:
            try:
                response = self.pipeline(self._process_query(current_history) if self.__chat_template(self.model_name) else current_history)
                return self._process_response(response=response)
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
                        return self._process_response(response="Error: Context too long even after reductions.")
                    limit -= 1
                    continue
                else:
                    print(f"Unexpected error: {error_msg}")
                    return self._process_response(response=f"Error: {error_msg}")
        return self._process_response(response="Error: Max retries exceeded.")

    def _process_query(self, history: List[Dict[str, str]]) -> str:
        """
        Process the conversation history to generate a query.
        """
        return self.tokenizer.apply_chat_template(
            history,
            tokenize=False,
            add_generation_prompt=True
        )

    def __chat_template(self, model: str) -> bool:
        models = [
            "Qwen"
        ]
        return any([model.startswith(m) for m in models])
