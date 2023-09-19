#!/bin/bash

# Install K3s
curl -sfL https://get.k3s.io | sh -

# Get Kubeconfig
sudo cat /etc/rancher/k3s/k3s.yaml > kubeconfig.yaml
echo "K3s cluster credentials saved to kubeconfig.yaml"

# Provide instructions for using kubeconfig.yaml
echo "To use kubectl with this cluster configuration, run the following command:"
echo "export KUBECONFIG=kubeconfig.yaml"
echo "kubectl get nodes"
