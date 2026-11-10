#!/usr/bin/env bash

set +e

if command -v exa >/dev/null 2>&1; then
    echo "exa already installed. Skipping."
    exit 0
fi

echo "Installing exa..."

sudo apt update
sudo apt install -y exa

if command -v exa >/dev/null 2>&1; then
    echo "exa installation successful."
    exit 0
else
    echo "exa installation failed."
    exit 1
fi
