#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=thasami/udacity

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity-devops --image=thasami/udacity --port=80
kubectl expose pod udacity-devops --port=80 --type="LoadBalancer"

# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl proxy
