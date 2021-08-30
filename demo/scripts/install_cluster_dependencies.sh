#!/bin/sh

kubectl apply -f ../Kubernetes/tiller-service-account.yaml

kubectl apply -f ../Kubernetes/tiller-clusterrolebinding.yaml

kubectl apply -f ../Kubernetes/tiller.yaml

kubectl apply -f ../Kubernetes/ingress_nginx_setup.yaml

printf "Sleeping for 2 minutes\n"
sleep 120

kubectl apply -f ../Kubernetes/ingress_config.yaml