#!/bin/bash

kubectl create namespace argo-rollouts
kubectl apply -n argo-rollouts -f ../argo/install.yaml
printf "Sleeping for 5 seconds\n"
sleep 5
kubectl apply -f ../argo/rollout.yaml
kubectl apply -f ../argo/service.yaml