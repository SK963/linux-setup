#!/usr/bin/env bash

set +e

if command -v fdfind >/dev/null 2>&1; then
    echo "fdfind already installed. Skipping."
    exit 0
fi

echo "Installing fdfind..."

sudo apt update
sudo apt install -y fd-find

if command -v fdfind >/dev/null 2>&1; then
    echo "fdfind installation successful."
    exit 0
else
    echo "fdfind installation failed."
    exit 1
fi
