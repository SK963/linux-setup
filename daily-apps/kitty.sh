#!/usr/bin/env bash

set -Eeuo pipefail

# Pre-install check
if command -v kitty >/dev/null 2>&1; then
    echo "Kitty already installed. Skipping."
    kitty --version 2>/dev/null || true
    exit 0
fi

echo "Installing Kitty..."

sudo apt-get update
sudo apt-get install -y kitty

# Post-install verification
if command -v kitty >/dev/null 2>&1; then
    echo "✅ Kitty installation successful."
    kitty --version 2>/dev/null || true
    exit 0
else
    echo "❌ Kitty installation failed." >&2
    exit 1
fi
