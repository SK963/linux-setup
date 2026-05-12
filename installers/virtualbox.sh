#!/usr/bin/env bash

set +e

if command -v virtualbox >/dev/null 2>&1; then
    echo "virtualbox already installed. Skipping."
    exit 0
fi

echo "Installing virtualbox..."

sudo apt update
sudo apt install -y virtualbox

if command -v virtualbox >/dev/null 2>&1; then
    echo "virtualbox installation successful."
    exit 0
else
    echo "virtualbox installation failed."
    exit 1
fi
