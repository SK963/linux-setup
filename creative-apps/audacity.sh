#!/usr/bin/env bash

set -Eeuo pipefail

# Pre-install check
if command -v audacity >/dev/null 2>&1; then
    echo "Audacity already installed. Skipping."
    audacity --version 2>/dev/null || dpkg -s audacity 2>/dev/null | grep Version || true
    exit 0
fi

echo "Installing Audacity..."

sudo apt-get update
sudo apt-get install -y audacity

# Post-install verification
if command -v audacity >/dev/null 2>&1; then
    echo "✅ Audacity installation successful."
    audacity --version 2>/dev/null || dpkg -s audacity 2>/dev/null | grep Version || true
    exit 0
else
    echo "❌ Audacity installation failed." >&2
    exit 1
fi

