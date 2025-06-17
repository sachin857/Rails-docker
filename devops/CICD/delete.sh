#!/bin/bash

kubectl -n argocd delete -f argocd-manifest.yaml
kubectl -n argocd delete -f argocd-ingress.yaml

kubectl -n watcher delete -f tekton-pipeline.yaml
kubectl -n watcher delete -f tekton-dashboard.yaml
kubectl -n watcher delete -f tekton-secrets.yaml
kubectl -n watcher delete -f tekton-dashboard-ingress.yaml

kubectl delete ns argocd
kubectl delete ns watcher
