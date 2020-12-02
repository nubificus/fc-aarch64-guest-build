#!/bin/bash

DOCKER_BUILDKIT=1 docker build --network=host -f Dockerfile.guest.aarch64 -t cloudkernels/fc-guest-build --build-arg "TOKEN=$TOKEN" --target artifacts --output type=local,dest=./fc-guest-aarch64 .

cd fc-guest-aarch64 && bash create_rootfs.sh rootfs/* && rm -rf rootfs && rm create_rootfs.sh
