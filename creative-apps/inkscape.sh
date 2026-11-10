#!/usr/bin/env bash

set -Eeuo pipefail

# Pre-install check
if command -v inkscape >/dev/null 2>&1; then
    echo "Inkscape already installed. Skipping."
    inkscape --version 2>/dev/null || true
    exit 0
fi

echo "Installing Inkscape..."

sudo apt-get update
sudo apt-get install -y inkscape

# Post-install verification
if command -v inkscape >/dev/null 2>&1; then
    echo "✅ Inkscape installation successful."
    inkscape --version 2>/dev/null || true
    exit 0
else
    echo "❌ Inkscape installation failed." >&2
    exit 1
fi
