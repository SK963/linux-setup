#!/usr/bin/env bash

set -Eeuo pipefail

# --- Pre-install check ---
if command -v calibre >/dev/null 2>&1; then
    echo "Calibre already installed. Skipping."
    calibre --version 2>/dev/null || true
    exit 0
fi

echo "Installing Calibre..."

# --- Installation steps ---
sudo apt-get update
sudo apt-get install -y calibre

# --- Post-install verification ---
if command -v calibre >/dev/null 2>&1; then
    echo "✅ Calibre installation successful."
    calibre --version 2>/dev/null || true
    exit 0
else
    echo "❌ Calibre installation failed." >&2
    exit 1
fi
