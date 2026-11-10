#!/usr/bin/env bash

set +e

if command -v zsh-autosuggestions >/dev/null 2>&1; then
    echo "zsh-autosuggestions already installed. Skipping."
    exit 0
fi

echo "Installing zsh-autosuggestions..."

sudo apt update
sudo apt install -y zsh-autosuggestions

if command -v zsh-autosuggestions >/dev/null 2>&1; then
    echo "zsh-autosuggestions installation successful."
    exit 0
else
    echo "zsh-autosuggestions installation failed."
    exit 1
fi
