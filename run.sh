#!/bin/bash

[ kubectl get ns dev ] 2> /dev/null || kubectl create ns dev
kubectl -n dev apply -f ./k8s/postgres_stateful.yaml
kubectl -n dev apply -f ./k8s/railwebapp_deployment.yaml
kubectl -n dev apply -f ./k8s/railwebapp_service.yaml
kubectl -n dev apply -f ./k8s/ingress.yaml
