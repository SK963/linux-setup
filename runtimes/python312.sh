#!/usr/bin/env bash

set +e

if command -v python3.12 >/dev/null 2>&1; then
    echo "python3.12 already installed. Skipping."
    exit 0
fi

echo "Installing python3.12..."

sudo apt update
sudo apt install -y python3.12 python3.12-venv python3-pip

if command -v python3.12 >/dev/null 2>&1; then
    echo "python3.12 installation successful."
    exit 0
else
    echo "python3.12 installation failed."
    exit 1
fi
