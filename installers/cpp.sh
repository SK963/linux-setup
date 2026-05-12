#!/usr/bin/env bash

set +e

if command -v g++ >/dev/null 2>&1; then
    echo "g++ already installed. Skipping."
    exit 0
fi

echo "Installing g++..."

sudo apt update
sudo apt install -y build-essential gdb cmake

if command -v g++ >/dev/null 2>&1; then
    echo "g++ installation successful."
    exit 0
else
    echo "g++ installation failed."
    exit 1
fi
