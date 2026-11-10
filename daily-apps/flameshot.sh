#!/usr/bin/env bash

set -Eeuo pipefail

# Pre-install check
if command -v flameshot >/dev/null 2>&1; then
    echo "Flameshot already installed. Skipping."
    flameshot --version 2>/dev/null || true
    exit 0
fi

echo "Installing Flameshot..."

sudo apt-get update
sudo apt-get install -y flameshot

# Post-install verification
if command -v flameshot >/dev/null 2>&1; then
    echo "✅ Flameshot installation successful."
    flameshot --version 2>/dev/null || true
    exit 0
else
    echo "❌ Flameshot installation failed." >&2
    exit 1
fi
