#!/usr/bin/env bash

set -Eeuo pipefail

# Pre-install check
if command -v vlc >/dev/null 2>&1; then
    echo "VLC already installed. Skipping."
    vlc --version 2>/dev/null || true
    exit 0
fi

echo "Installing VLC..."

sudo apt-get update
sudo apt-get install -y vlc

# Post-install verification
if command -v vlc >/dev/null 2>&1; then
    echo "✅ VLC installation successful."
    vlc --version 2>/dev/null || true
    exit 0
else
    echo "❌ VLC installation failed." >&2
    exit 1
fi
