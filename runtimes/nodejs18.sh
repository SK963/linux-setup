#!/usr/bin/env bash

set +e

if command -v node >/dev/null 2>&1; then
    echo "node already installed. Skipping."
    exit 0
fi

echo "Installing node..."

curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install -y nodejs

if command -v node >/dev/null 2>&1; then
    echo "node installation successful."
    exit 0
else
    echo "node installation failed."
    exit 1
fi
