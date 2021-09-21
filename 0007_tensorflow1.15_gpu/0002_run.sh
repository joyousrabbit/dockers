#!/bin/bash
xhost +

image="tensorflow/tensorflow"
tag="1.15.5-gpu-py3-jupyter"
name="tensorflow"

nvidia-docker run -it --rm\
    --ipc=host \
    --net=host \
    --env="DISPLAY" \
    --env=TERM="xterm-color"\
    --env="QT_X11_NO_MITSHM=1" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --volume="$HOME:/root:rw"\
    --name=$name\
    --privileged=True \
    $image:$tag $SHELL

