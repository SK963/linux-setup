#!/usr/bin/env bash

set -Eeuo pipefail

# Pre-install check
if command -v openboard >/dev/null 2>&1 || dpkg -s openboard >/dev/null 2>&1; then
    echo "OpenBoard already installed. Skipping."
    dpkg -s openboard 2>/dev/null | grep Version || true
    exit 0
fi

echo "Installing OpenBoard..."

sudo apt-get update
sudo apt-get install -y openboard 2>/dev/null || {
    echo "apt install fallback to official deb..."
    curl -fsSLo /tmp/openboard.deb https://github.com/OpenBoard-org/OpenBoard/releases/download/v1.7.2/openboard_1.7.2-ubuntu-22.04_amd64.deb
    sudo apt-get install -y /tmp/openboard.deb
    rm -f /tmp/openboard.deb
}

# Post-install verification
if command -v openboard >/dev/null 2>&1 || dpkg -s openboard >/dev/null 2>&1; then
    echo "✅ OpenBoard installation successful."
    dpkg -s openboard 2>/dev/null | grep Version || true
    exit 0
else
    echo "❌ OpenBoard installation failed." >&2
    exit 1
fi
