#!/usr/bin/env bash

set +e

if command -v btop >/dev/null 2>&1; then
    echo "btop already installed. Skipping."
    exit 0
fi

echo "Installing btop..."

sudo apt update
sudo apt install -y btop

if command -v btop >/dev/null 2>&1; then
    echo "btop installation successful."
    exit 0
else
    echo "btop installation failed."
    exit 1
fi
