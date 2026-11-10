#!/usr/bin/env bash

set -Eeuo pipefail

# Pre-install check
if command -v copyq >/dev/null 2>&1; then
    echo "CopyQ already installed. Skipping."
    copyq --version 2>/dev/null || true
    exit 0
fi

echo "Installing CopyQ..."

sudo apt-get update
sudo apt-get install -y copyq

# Post-install verification
if command -v copyq >/dev/null 2>&1; then
    echo "✅ CopyQ installation successful."
    copyq --version 2>/dev/null || true
    exit 0
else
    echo "❌ CopyQ installation failed." >&2
    exit 1
fi
