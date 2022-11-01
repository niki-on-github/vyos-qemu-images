#!/bin/bash

if docker images | grep -q vyos-qemu-images; then
    docker build -t vyos-qemu-images .
fi

docker run -it --rm --privileged -v /dev:/dev -v $PWD/images:/output vyos-qemu-images
