#!/usr/bin/env bash

set -Eeuo pipefail

# Pre-install check
if command -v fish >/dev/null 2>&1; then
    echo "Fish shell already installed. Skipping."
    fish --version 2>/dev/null || true
    exit 0
fi

echo "Installing Fish shell..."

sudo apt-get update
sudo apt-get install -y fish

# Post-install verification
if command -v fish >/dev/null 2>&1; then
    echo "✅ Fish shell installation successful."
    fish --version 2>/dev/null || true
    exit 0
else
    echo "❌ Fish shell installation failed." >&2
    exit 1
fi
