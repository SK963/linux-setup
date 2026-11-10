#!/usr/bin/env bash

set -Eeuo pipefail

# Pre-install check
if command -v keepassxc-cli >/dev/null 2>&1; then
    echo "KeePassXC already installed. Skipping."
    keepassxc-cli --version 2>/dev/null || true
    exit 0
fi

echo "Installing KeePassXC..."

sudo apt-get update
sudo apt-get install -y keepassxc

# Post-install verification
if command -v keepassxc-cli >/dev/null 2>&1; then
    echo "✅ KeePassXC installation successful."
    keepassxc-cli --version 2>/dev/null || true
    exit 0
else
    echo "❌ KeePassXC installation failed." >&2
    exit 1
fi
