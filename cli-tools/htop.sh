#!/usr/bin/env bash

set +e

if command -v htop >/dev/null 2>&1; then
    echo "htop already installed. Skipping."
    exit 0
fi

echo "Installing htop..."

sudo apt update
sudo apt install -y htop

if command -v htop >/dev/null 2>&1; then
    echo "htop installation successful."
    exit 0
else
    echo "htop installation failed."
    exit 1
fi
