#!/bin/bash

# Set variables
IMAGE_NAME=lalberslz4/duckdns
PLATFORMS=linux/amd64,linux/arm64
BUILDKIT_COMPRESSION=zstd
BUILDKIT_COMPRESSION_LEVEL=9
docker buildx build --platform $PLATFORMS --tag $IMAGE_NAME:latest --push .