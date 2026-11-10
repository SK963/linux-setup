#!/usr/bin/env bash

set -Eeuo pipefail

# Pre-install check
if command -v lmms >/dev/null 2>&1; then
    echo "LMMS already installed. Skipping."
    lmms --version 2>/dev/null || dpkg -s lmms 2>/dev/null | grep Version || true
    exit 0
fi

echo "Installing LMMS..."

sudo apt-get update
sudo apt-get install -y lmms

# Post-install verification
if command -v lmms >/dev/null 2>&1; then
    echo "✅ LMMS installation successful."
    lmms --version 2>/dev/null || dpkg -s lmms 2>/dev/null | grep Version || true
    exit 0
else
    echo "❌ LMMS installation failed." >&2
    exit 1
fi

