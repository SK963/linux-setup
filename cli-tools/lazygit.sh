#!/usr/bin/env bash

set +e

if command -v lazygit >/dev/null 2>&1; then
    echo "lazygit already installed. Skipping."
    exit 0
fi

echo "Installing lazygit..."

sudo add-apt-repository ppa:lazygit-team/release -y
sudo apt update
sudo apt install -y lazygit

if command -v lazygit >/dev/null 2>&1; then
    echo "lazygit installation successful."
    exit 0
else
    echo "lazygit installation failed."
    exit 1
fi
