#!/usr/bin/env bash

set +e

if command -v minikube >/dev/null 2>&1; then
    echo "minikube already installed. Skipping."
    exit 0
fi

echo "Installing minikube..."

curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

if command -v minikube >/dev/null 2>&1; then
    echo "minikube installation successful."
    exit 0
else
    echo "minikube installation failed."
    exit 1
fi
