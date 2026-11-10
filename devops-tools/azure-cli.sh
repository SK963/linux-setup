#!/usr/bin/env bash

set +e

if command -v az >/dev/null 2>&1; then
    echo "az already installed. Skipping."
    exit 0
fi

echo "Installing az..."

curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

if command -v az >/dev/null 2>&1; then
    echo "az installation successful."
    exit 0
else
    echo "az installation failed."
    exit 1
fi
