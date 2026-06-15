FROM runpod/worker-comfyui:5.8.5-base
RUN comfy-node-install comfyui-impact-pack comfyui-impact-subpack
COPY extra_model_paths.yaml /comfyui/extra_model_paths.yaml
