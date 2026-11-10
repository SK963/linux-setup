#!/usr/bin/env bash

set +e

if command -v fzf >/dev/null 2>&1; then
    echo "fzf already installed. Skipping."
    exit 0
fi

echo "Installing fzf..."

sudo apt update
sudo apt install -y fzf

if command -v fzf >/dev/null 2>&1; then
    echo "fzf installation successful."
    exit 0
else
    echo "fzf installation failed."
    exit 1
fi
