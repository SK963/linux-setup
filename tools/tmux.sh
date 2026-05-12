#!/usr/bin/env bash

set +e

if command -v tmux >/dev/null 2>&1; then
    echo "tmux already installed. Skipping."
    exit 0
fi

echo "Installing tmux..."

sudo apt update
sudo apt install -y tmux

if command -v tmux >/dev/null 2>&1; then
    echo "tmux installation successful."
    exit 0
else
    echo "tmux installation failed."
    exit 1
fi
