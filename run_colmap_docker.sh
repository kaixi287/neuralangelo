#!/usr/bin/bash

IMAGE_NAME="chenhsuanlin/colmap:3.8"
# IMAGE_NAME="dromni/nerfstudio:0.3.4"
# WS_PORT=7007
# SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
WORK_DIR="/workspace"
SAVE_DIR="/home/$USER/Git/neuralangelo"

docker run -it --rm --ipc=host --gpus all \
  -v ${SAVE_DIR}:${WORK_DIR} \
  ${IMAGE_NAME}

# docker exec -it \
#   -v ${SAVE_DIR}:${WORK_DIR} \
#   ${IMAGE_NAME}