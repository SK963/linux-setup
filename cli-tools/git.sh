#!/usr/bin/env bash

set +e

if command -v git >/dev/null 2>&1; then
    echo "Git already installed."
    git --version
    exit 0
fi

echo "Installing Git..."

sudo apt update

sudo apt install -y git

if command -v git >/dev/null 2>&1; then
    echo "Git installation successful."
    git --version
    exit 0
else
    echo "Git installation failed."
    exit 1
fi