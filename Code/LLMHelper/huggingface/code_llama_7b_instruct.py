import transformers
from LLMHelper.base import ResponseLLMHelper
from LLMHelper.huggingface import BaseHuggingFaceModel, HuggingFaceModelFactory
import torch
import os
from typing import List, Dict, Any

os.environ["PYTORCH_CUDA_ALLOC_CONF"] = "expandable_segments:True"


class CodeLlama7bInstruct(BaseHuggingFaceModel):

    def __init__(self, token: str):
        super().__init__("meta-llama/CodeLlama-7b-Instruct-hf", token)

    def _setup_model(self) -> None:
        """
        Setup the CodeLlama-7b model from Meta.
        """
        tokenizer = transformers.AutoTokenizer.from_pretrained(self.model_name)
        quantization_config = transformers.BitsAndBytesConfig(
            load_in_4bit=True,
            bnb_4bit_compute_dtype=torch.float16,
            bnb_4bit_use_double_quant=True,
            bnb_4bit_quant_type="nf4",
        )
        # quantization_config = transformers.BitsAndBytesConfig(
        #     load_in_8bit=True
        # )
        model = transformers.AutoModelForCausalLM.from_pretrained(
            self.model_name,
            quantization_config=quantization_config,
            trust_remote_code=True,
            torch_dtype=torch.float16,
            device_map="auto",
        )
        self.pipeline = transformers.pipeline(
            "text-generation",
            model=model,
            tokenizer=tokenizer,
            max_new_tokens=1024,
        )
        self.system_prompt = {}

        self.max_context_length = 16_000
        self.reduction_sizes = [8, 6, 4, 3, 2, 1]

    def _reduce_context(self, history: List[Dict[str,str]], reduction_index: int):
        """
        Reduce the context size while maintaining conversation relevance.
        Removes system prompt at later reductions if necessary.
        """
        if reduction_index >= len(self.reduction_sizes):
            return (
                history,
                reduction_index,
                False,
            )  # Stop reducing if exhausted all options

        if len(history) <= 2:  # If only system prompt + one message remains, stop
            return history, reduction_index, False

        current_size = self.reduction_sizes[reduction_index]
        reduced_history = history[-current_size:]  # Keep only last N exchanges

        # Remove system prompt if we're at the last reduction step
        if reduction_index == len(self.reduction_sizes) - 1:
            reduced_history = [
                msg for msg in reduced_history if msg["role"] != "system"
            ]

        return reduced_history, reduction_index + 1, True

    def _process_response(self, response: Any) -> str:
        try:
            if isinstance(response, str):
                return ResponseLLMHelper.build_obj(response)
                
            if isinstance(response, list) and 'generated_text' in response[0]:
                messages = response[0]['generated_text']
                if isinstance(messages, list):
                    # Find assistant message
                    for msg in messages:
                        if msg.get('role') == 'assistant':
                            return ResponseLLMHelper.build_obj(msg.get('content', ''))
                    # Fallback if no assistant message found
                    return ResponseLLMHelper.build_obj("No assistant response found")
                
            # Handle direct text response
            generated_text = response[0]['generated_text']
            if isinstance(generated_text, str):
                return ResponseLLMHelper.build_obj(generated_text.split("Assistant:")[-1].strip())
                
            return ResponseLLMHelper.build_obj("Error: Unexpected response format")
                
        except Exception as e:
            return ResponseLLMHelper.build_obj(f"Error processing response: {str(e)}")

    def get_response(self, history: List[Dict[str, str]], **kwargs) -> Dict[str, str]:
        """
        Generate a response from the Phi-4 model while managing context length.
        """
        limit = 12
        reduction_index = 0
        current_history = history.copy()

        while limit > 0:
            try:
                response = self.pipeline(current_history)
                return self._process_response(response=response)

            except Exception as e:
                error_msg = str(e)
                if (
                    "CUDA out of memory" in error_msg or
                    "maximum context length" in error_msg or
                    "exceeds max tokens" in error_msg
                ):
                    print("Context too long, reducing conversation history...")
                    if torch.cuda.is_available():
                        torch.cuda.empty_cache()
                    current_history, reduction_index, success = self._reduce_context(
                        current_history, reduction_index
                    )
                    if not success:
                        return (
                            self._process_response(response="Error: Context too long even after trying all reductions.")
                        )
                    limit -= 1
                    continue
                else:
                    print(f"Unexpected error: {error_msg}")
                    return self._process_response(response=f"Error: {error_msg}")

        return self._process_response(response="Error: Max retries exceeded.")


# Register the model with the factory
HuggingFaceModelFactory.register("meta-llama/CodeLlama-7b-Instruct-hf", CodeLlama7bInstruct)
