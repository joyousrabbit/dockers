#!/bin/bash
xhost +
docker exec -it $1 $SHELL
