#!/usr/bin/env bash

set +e

if command -v tldr >/dev/null 2>&1; then
    echo "tldr already installed. Skipping."
    exit 0
fi

echo "Installing tldr..."

sudo apt update
sudo apt install -y tldr

if command -v tldr >/dev/null 2>&1; then
    echo "tldr installation successful."
    exit 0
else
    echo "tldr installation failed."
    exit 1
fi
