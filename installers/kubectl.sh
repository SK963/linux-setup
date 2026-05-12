#!/usr/bin/env bash

set +e

if command -v kubectl >/dev/null 2>&1; then
    echo "kubectl already installed."
    kubectl version --client
    exit 0
fi

echo "Installing kubectl..."

sudo apt update

sudo apt install -y \
    curl \
    apt-transport-https \
    ca-certificates

KUBECTL_VERSION=$(curl -L -s https://dl.k8s.io/release/stable.txt)

curl -LO "https://dl.k8s.io/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl"

chmod +x kubectl

sudo mv kubectl /usr/local/bin/

if command -v kubectl >/dev/null 2>&1; then
    echo "kubectl installation successful."
    kubectl version --client
    exit 0
else
    echo "kubectl installation failed."
    exit 1
fi