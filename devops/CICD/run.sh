#!/bin/bash

[ kubectl get ns argocd ] &> /dev/null || kubectl create ns argocd
kubectl -n argocd apply -f argocd-manifest.yaml
kubectl -n argocd apply -f argocd-ingress.yaml

[ kubectl get ns watcher ] &> /dev/null || kubectl create ns watcher
kubectl -n watcher apply -f tekton-dashboard-ingress.yaml
kubectl -n watcher apply -f tekton-pipeline.yaml
kubectl -n watcher apply -f tekton-dashboard.yaml
kubectl -n watcher apply -f tekton-secrets.yaml
