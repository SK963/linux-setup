#!/usr/bin/env bash

set -Eeuo pipefail

# Pre-install check
if command -v krita >/dev/null 2>&1; then
    echo "Krita already installed. Skipping."
    krita --version 2>/dev/null || dpkg -s krita 2>/dev/null | grep Version || true
    exit 0
fi

echo "Installing Krita..."

sudo apt-get update
sudo apt-get install -y krita

# Post-install verification
if command -v krita >/dev/null 2>&1; then
    echo "✅ Krita installation successful."
    krita --version 2>/dev/null || dpkg -s krita 2>/dev/null | grep Version || true
    exit 0
else
    echo "❌ Krita installation failed." >&2
    exit 1
fi
