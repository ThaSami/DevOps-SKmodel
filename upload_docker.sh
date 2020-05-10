#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="thasami/udacity"
# Step 2:  
# Authenticate & tag

echo "Docker ID and Image: $dockerpath"
docker tag thasami/udacity thasami/udacity:1.0
docker login --username=thasami
# Step 3:
# Push image to a docker repository
docker push thasami/udacity
