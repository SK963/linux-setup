#!/usr/bin/env bash

set +e

if command -v eza >/dev/null 2>&1; then
    echo "eza already installed. Skipping."
    exit 0
fi

echo "Installing eza..."

sudo apt update
sudo apt install -y eza

if command -v eza >/dev/null 2>&1; then
    echo "eza installation successful."
    exit 0
else
    echo "eza installation failed."
    exit 1
fi
