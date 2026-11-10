#!/usr/bin/env bash

set +e

if command -v ncdu >/dev/null 2>&1; then
    echo "ncdu already installed. Skipping."
    exit 0
fi

echo "Installing ncdu..."

sudo apt update
sudo apt install -y ncdu

if command -v ncdu >/dev/null 2>&1; then
    echo "ncdu installation successful."
    exit 0
else
    echo "ncdu installation failed."
    exit 1
fi
