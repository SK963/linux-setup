#!/usr/bin/env bash

set +e

if command -v tree >/dev/null 2>&1; then
    echo "tree already installed. Skipping."
    exit 0
fi

echo "Installing tree..."

sudo apt update
sudo apt install -y tree

if command -v tree >/dev/null 2>&1; then
    echo "tree installation successful."
    exit 0
else
    echo "tree installation failed."
    exit 1
fi
