#!/bin/bash

kubectl -n argocd delete -f argocd-manifest.yaml
kubectl -n argocd delete -f argocd-ingress.yaml
kubectl delete ns argocd
