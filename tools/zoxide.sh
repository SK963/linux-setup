#!/usr/bin/env bash

set +e

if command -v zoxide >/dev/null 2>&1; then
    echo "zoxide already installed. Skipping."
    exit 0
fi

echo "Installing zoxide..."

sudo apt update
sudo apt install -y zoxide

if command -v zoxide >/dev/null 2>&1; then
    echo "zoxide installation successful."
    exit 0
else
    echo "zoxide installation failed."
    exit 1
fi
