#!/usr/bin/env bash

docker run -it --rm --runtime nvidia --privileged -e DISPLAY=${DISPLAY}  -e NVIDIA_DRIVER_CAPABILITIES=all -v "${PWD}":/code -v "${PWD}/torch_cache":/root/.cache/torch -v /tmp/.X11-unix:/tmp/.X11-unix torch --net host zs6d /bin/bash

