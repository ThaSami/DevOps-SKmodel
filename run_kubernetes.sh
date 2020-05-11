#!/usr/bin/env bash

dockerpath="thasami/udacity"

(kubectl run --image=$dockerpath udacity-devops --port=80)

kubectl get pods

sleep 10

kubectl port-forward udacity-devops 8080:80
