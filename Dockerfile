# clean base image containing only comfyui, comfy-cli and comfyui-manager
FROM runpod/worker-comfyui:5.5.0-base

# install custom nodes into comfyui

# download models into comfyui
RUN comfy model download --url https://civitai.com/api/download/models/256869?type=Model&format=SafeTensor&size=pruned&fp=fp16 --relative-path models/checkpoints --filename majicmixFantasy_v30Vae.safetensors

RUN comfy model download --url https://civitai.com/api/download/models/303526?type=Model&format=SafeTensor&size=full&fp=fp16 --relative-path models/checkpoints --filename aamXLAnimeMix_v10.safetensors

RUN comfy model download --url https://civitai.com/api/download/models/128713?type=Model&format=SafeTensor&size=pruned&fp=fp16 --relative-path models/checkpoints --filename dreamshaper_8.safetensors

RUN comfy model download --url https://civitai.com/api/download/models/171746?type=Model&format=SafeTensor&size=full&fp=fp16 --relative-path models/checkpoints --filename somman_v10.safetensors

RUN comfy model download --url https://civitai.com/api/download/models/2392184?type=Model&format=SafeTensor&size=pruned&fp=fp16 --relative-path models/checkpoints --filename novaAnimeXL_ilV130.safetensors

RUN comfy model download --url https://civitai.com/api/download/models/450187?type=Model&format=SafeTensor&size=pruned&fp=fp16 --relative-path models/checkpoints --filename dreamshaperXL_v21TurboDPSMDE.safetensors

RUN comfy model download --url https://civitai.com/api/download/models/403131?type=Model&format=SafeTensor&size=full&fp=fp16 --relative-path models/checkpoints --filename animagineXLV31_v30.safetensors

RUN comfy model download --url https://civitai.com/api/download/models/173974?type=Model&format=SafeTensor&size=full&fp=fp32 --relative-path models/checkpoints --filename cardosXL_v10.safetensors

# copy all input data (like images or videos) into comfyui (uncomment and adjust if needed)
# COPY input/ /comfyui/input/
