from LLMHelper.huggingface.__defaulHelper import HuggingFaceModel

class GemmaModel(HuggingFaceModel):
    """
    A specialized HuggingFace model for Gemma which ignores system tokens and uses a custom chat template.
    """
    def _setup_model(self) -> None:
        # You could override _setup_model if Gemma requires a different tokenizer or model initialization.
        super()._setup_model()

    def _process_query(self, history: list[dict]) -> str:
        # Override to remove system tokens and use a different formatting.
        # For example, filter out any messages with 'system' role.
        _cleaned_history = [msg for msg in history if msg["role"] != "system"]
        return self.tokenizer.apply_chat_template(
            _cleaned_history,
            tokenize=False,
            add_generation_prompt=True
        )

    def __chat_template(self, model: str) -> bool:
        # Return False, so that _process_query will be used instead.
        return True