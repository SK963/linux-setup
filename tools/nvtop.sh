#!/usr/bin/env bash

set +e

if command -v nvtop >/dev/null 2>&1; then
    echo "nvtop already installed. Skipping."
    exit 0
fi

echo "Installing nvtop..."

sudo apt update
sudo apt install -y nvtop

if command -v nvtop >/dev/null 2>&1; then
    echo "nvtop installation successful."
    exit 0
else
    echo "nvtop installation failed."
    exit 1
fi
