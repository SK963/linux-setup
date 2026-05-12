#!/usr/bin/env bash

set +e

if command -v ansible >/dev/null 2>&1; then
    echo "ansible already installed. Skipping."
    exit 0
fi

echo "Installing ansible..."

sudo apt update
sudo apt install -y ansible

if command -v ansible >/dev/null 2>&1; then
    echo "ansible installation successful."
    exit 0
else
    echo "ansible installation failed."
    exit 1
fi
