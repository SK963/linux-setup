#!/usr/bin/env bash

set -Eeuo pipefail

# Pre-install check
if command -v ardour8 >/dev/null 2>&1 || command -v ardour7 >/dev/null 2>&1 || command -v ardour >/dev/null 2>&1 || dpkg -s ardour >/dev/null 2>&1; then
    echo "Ardour already installed. Skipping."
    dpkg -s ardour 2>/dev/null | grep Version || true
    exit 0
fi

echo "Installing Ardour..."

sudo apt-get update
sudo apt-get install -y ardour

# Post-install verification
if command -v ardour8 >/dev/null 2>&1 || command -v ardour7 >/dev/null 2>&1 || command -v ardour >/dev/null 2>&1 || dpkg -s ardour >/dev/null 2>&1; then
    echo "✅ Ardour installation successful."
    dpkg -s ardour 2>/dev/null | grep Version || true
    exit 0
else
    echo "❌ Ardour installation failed." >&2
    exit 1
fi
