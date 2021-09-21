#!/bin/bash
xhost +

image="pytorch/pytorch"
tag="latest"

nvidia-docker run -it --rm\
    --net=host \
    --env="DISPLAY" \
    --env=TERM="xterm-color"\
    --env=HOME="/home/fujun"\
    --env="QT_X11_NO_MITSHM=1" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --volume="$HOME:/home/fujun:rw"\
    --name="pytorch"\
    --privileged=True \
    $image:$tag $SHELL

