#!/usr/bin/env bash

set +e

if command -v terraform >/dev/null 2>&1; then
    echo "terraform already installed. Skipping."
    exit 0
fi

echo "Installing terraform..."

sudo apt install -y gnupg software-properties-common curl
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update
sudo apt install -y terraform

if command -v terraform >/dev/null 2>&1; then
    echo "terraform installation successful."
    exit 0
else
    echo "terraform installation failed."
    exit 1
fi
