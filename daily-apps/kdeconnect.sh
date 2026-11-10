#!/usr/bin/env bash

set -Eeuo pipefail

# Pre-install check
if command -v kdeconnect-cli >/dev/null 2>&1; then
    echo "KDE Connect already installed. Skipping."
    kdeconnect-cli --version 2>/dev/null || dpkg -s kdeconnect 2>/dev/null | grep Version
    exit 0
fi

echo "Installing KDE Connect..."

sudo apt-get update
sudo apt-get install -y kdeconnect

# Post-install verification
if command -v kdeconnect-cli >/dev/null 2>&1; then
    echo "✅ KDE Connect installation successful."
    kdeconnect-cli --version 2>/dev/null || dpkg -s kdeconnect 2>/dev/null | grep Version
    exit 0
else
    echo "❌ KDE Connect installation failed." >&2
    exit 1
fi
