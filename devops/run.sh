#!/bin/bash

[ kubectl get ns argocd ] &> /dev/null || kubectl create ns argocd
kubectl -n argocd apply -f argocd-manifest.yaml
kubectl -n argocd apply -f argocd-ingress.yaml
