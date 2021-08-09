#!/bin/sh

kubectl apply -f ./tiller-service-account.yaml

kubectl apply -f ./tiller-clusterrolebinding.yaml

kubectl apply -f ./tiller.yaml

kubectl apply -f ./ingress_nginx_setup.yaml