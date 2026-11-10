#!/usr/bin/env bash

set -Eeuo pipefail

# Pre-install check
if snap list | grep -q bitwarden 2>/dev/null; then
    echo "Bitwarden already installed. Skipping."
    snap list bitwarden 2>/dev/null || true
    exit 0
fi

echo "Installing Bitwarden..."

sudo snap install bitwarden

# Post-install verification
if snap list | grep -q bitwarden 2>/dev/null; then
    echo "✅ Bitwarden installation successful."
    snap list bitwarden 2>/dev/null || true
    exit 0
else
    echo "❌ Bitwarden installation failed." >&2
    exit 1
fi
