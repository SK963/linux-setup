#!/usr/bin/env bash

set -Eeuo pipefail

# Pre-install check
if command -v mpv >/dev/null 2>&1; then
    echo "MPV already installed. Skipping."
    mpv --version 2>/dev/null || true
    exit 0
fi

echo "Installing MPV..."

sudo apt-get update
sudo apt-get install -y mpv

# Post-install verification
if command -v mpv >/dev/null 2>&1; then
    echo "✅ MPV installation successful."
    mpv --version 2>/dev/null || true
    exit 0
else
    echo "❌ MPV installation failed." >&2
    exit 1
fi
