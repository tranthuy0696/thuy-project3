#!/bin/bash
kubectl apply -f ./script-deployment/service-deployment.yaml

## Service
kubectl apply -f ./script-deployment/start-service.yaml