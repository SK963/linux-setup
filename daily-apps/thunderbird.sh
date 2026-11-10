#!/usr/bin/env bash

set -Eeuo pipefail

# Pre-install check
if command -v thunderbird >/dev/null 2>&1; then
    echo "Thunderbird already installed. Skipping."
    thunderbird --version 2>/dev/null || true
    exit 0
fi

echo "Installing Thunderbird..."

sudo apt-get update
sudo apt-get install -y thunderbird

# Post-install verification
if command -v thunderbird >/dev/null 2>&1; then
    echo "✅ Thunderbird installation successful."
    thunderbird --version 2>/dev/null || true
    exit 0
else
    echo "❌ Thunderbird installation failed." >&2
    exit 1
fi
