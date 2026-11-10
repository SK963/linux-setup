#!/usr/bin/env bash

set -Eeuo pipefail

# Pre-install check
if command -v kdenlive >/dev/null 2>&1; then
    echo "Kdenlive already installed. Skipping."
    kdenlive --version 2>/dev/null || dpkg -s kdenlive 2>/dev/null | grep Version || true
    exit 0
fi

echo "Installing Kdenlive..."

sudo apt-get update
sudo apt-get install -y kdenlive

# Post-install verification
if command -v kdenlive >/dev/null 2>&1; then
    echo "✅ Kdenlive installation successful."
    kdenlive --version 2>/dev/null || dpkg -s kdenlive 2>/dev/null | grep Version || true
    exit 0
else
    echo "❌ Kdenlive installation failed." >&2
    exit 1
fi
