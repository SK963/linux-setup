#!/usr/bin/env bash

set +e

if command -v gcloud >/dev/null 2>&1; then
    echo "gcloud already installed. Skipping."
    exit 0
fi

echo "Installing gcloud..."

sudo apt install -y apt-transport-https ca-certificates gnupg curl
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo gpg --dearmor -o /usr/share/keyrings/cloud.google.gpg
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee /etc/apt/sources.list.d/google-cloud-sdk.list
sudo apt update
sudo apt install -y google-cloud-cli

if command -v gcloud >/dev/null 2>&1; then
    echo "gcloud installation successful."
    exit 0
else
    echo "gcloud installation failed."
    exit 1
fi
