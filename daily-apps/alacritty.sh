#!/usr/bin/env bash

set -Eeuo pipefail

# Pre-install check
if command -v alacritty >/dev/null 2>&1; then
    echo "Alacritty already installed. Skipping."
    alacritty --version 2>/dev/null || true
    exit 0
fi

echo "Installing Alacritty..."

sudo add-apt-repository ppa:aslatter/ppa -y
sudo apt-get update
sudo apt-get install -y alacritty

# Post-install verification
if command -v alacritty >/dev/null 2>&1; then
    echo "✅ Alacritty installation successful."
    alacritty --version 2>/dev/null || true
    exit 0
else
    echo "❌ Alacritty installation failed." >&2
    exit 1
fi
