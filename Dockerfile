FROM runpod/worker-comfyui:5.8.5-base

RUN comfy-node-install comfyui-impact-pack comfyui-impact-subpack

# LoRA sa HuggingFace → /comfyui/models/loras/
RUN comfy model download \
  --url "https://huggingface.co/Jankode/woman123/resolve/main/Woman123_000002900.safetensors" \
  --relative-path models/loras \
  --filename Woman123_000002900.safetensors

COPY extra_model_paths.yaml /comfyui/extra_model_paths.yaml
