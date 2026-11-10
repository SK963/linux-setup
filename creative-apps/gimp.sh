#!/usr/bin/env bash

set -Eeuo pipefail

# Pre-install check
if command -v gimp >/dev/null 2>&1; then
    echo "GIMP already installed. Skipping."
    gimp --version 2>/dev/null || true
    exit 0
fi

echo "Installing GIMP..."

sudo apt-get update
sudo apt-get install -y gimp

# Post-install verification
if command -v gimp >/dev/null 2>&1; then
    echo "✅ GIMP installation successful."
    gimp --version 2>/dev/null || true
    exit 0
else
    echo "❌ GIMP installation failed." >&2
    exit 1
fi

