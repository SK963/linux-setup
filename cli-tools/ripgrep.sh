#!/usr/bin/env bash

set +e

if command -v rg >/dev/null 2>&1; then
    echo "rg already installed. Skipping."
    exit 0
fi

echo "Installing rg..."

sudo apt update
sudo apt install -y ripgrep

if command -v rg >/dev/null 2>&1; then
    echo "rg installation successful."
    exit 0
else
    echo "rg installation failed."
    exit 1
fi
