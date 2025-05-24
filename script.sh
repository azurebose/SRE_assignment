#!/bin/bash
# Create KIND Cluster
kind create cluster --name sre-cluster

# Install ArgoCD
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

# Port-forward ArgoCD
kubectl port-forward svc/argocd-server -n argocd 8080:443
