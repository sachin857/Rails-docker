#!/bin/bash

kubectl -n dev delete -f ./k8s/postgres_stateful.yaml
kubectl -n dev delete -f ./k8s/railwebapp_deployment.yaml
kubectl -n dev delete -f ./k8s/railwebapp_service.yaml
kubectl -n dev delete -f ./k8s/ingress.yaml
kubectl delete ns dev
