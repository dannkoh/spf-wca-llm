# llm_helpers/huggingface_helper.py

from transformers import AutoModelForCausalLM, AutoTokenizer
import torch
from LLMHelper.base import BaseLLMHelper

class HuggingFaceHelper(BaseLLMHelper):
    """
    A helper class for interacting with Hugging Face models.
    """

    def __init__(self, model_name, hf_token):
        """
        Initialize the HuggingFaceHelper with the given model.

        Args:
            model_name (str): The name of the Hugging Face model to use.
        """
        self.tokenizer = AutoTokenizer.from_pretrained(model_name, token = hf_token, trust_remote_code=True)
        self.model = AutoModelForCausalLM.from_pretrained(model_name, token = hf_token, trust_remote_code=True)


        self.generationargs = {
            "max_new_tokens": 500,
            "pad_token_id": self.tokenizer.eos_token_id,

        }

    def get_response(self, history, prompt, model=None):
        """
        Generate a response from the Hugging Face model based on the provided prompt.
        """
        # Use the prompt directly without role identifiers
        full_prompt = prompt

        # Encode input and generate response
        inputs = self.tokenizer(full_prompt, return_tensors='pt')
        input_ids = inputs['input_ids']
        attention_mask = inputs['attention_mask']

        outputs = self.model.generate(
            input_ids=input_ids,
            attention_mask=attention_mask,
            **self.generationargs
        )

        response_text = self.tokenizer.decode(outputs[0], skip_special_tokens=True)
        assistant_response = response_text[len(full_prompt):].strip()

        # Mock response to match expected format
        response = {
            'choices': [{
                'message': {
                    'content': assistant_response
                }
            }]
        }
        return response