#!/usr/bin/env bash

set +e

if command -v go >/dev/null 2>&1; then
    echo "go already installed. Skipping."
    exit 0
fi

echo "Installing go..."

sudo apt update
sudo apt install -y golang-go

if command -v go >/dev/null 2>&1; then
    echo "go installation successful."
    exit 0
else
    echo "go installation failed."
    exit 1
fi
