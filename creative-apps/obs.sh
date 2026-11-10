#!/usr/bin/env bash

set -Eeuo pipefail

# Pre-install check
if command -v obs >/dev/null 2>&1; then
    echo "OBS Studio already installed. Skipping."
    obs --version 2>/dev/null || true
    exit 0
fi

echo "Installing OBS Studio..."

sudo add-apt-repository ppa:obsproject/obs-studio -y
sudo apt-get update
sudo apt-get install -y obs-studio

# Post-install verification
if command -v obs >/dev/null 2>&1; then
    echo "✅ OBS Studio installation successful."
    obs --version 2>/dev/null || true
    exit 0
else
    echo "❌ OBS Studio installation failed." >&2
    exit 1
fi

