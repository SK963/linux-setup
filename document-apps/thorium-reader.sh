#!/usr/bin/env bash

set -Eeuo pipefail

# --- Pre-install check ---
if snap list | grep -q thorium-reader; then
    echo "Thorium Reader already installed. Skipping."
    snap list thorium-reader
    exit 0
fi

echo "Installing Thorium Reader..."

# --- Installation steps ---
sudo snap install thorium-reader

# --- Post-install verification ---
if snap list | grep -q thorium-reader; then
    echo "✅ Thorium Reader installation successful."
    snap list thorium-reader
    exit 0
else
    echo "❌ Thorium Reader installation failed." >&2
    exit 1
fi
