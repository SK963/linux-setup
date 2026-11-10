#!/usr/bin/env bash

set -Eeuo pipefail

# Pre-install check
if command -v shotcut >/dev/null 2>&1 || (command -v snap >/dev/null 2>&1 && snap list | grep -q shotcut); then
    echo "Shotcut already installed. Skipping."
    snap list shotcut 2>/dev/null || shotcut --version 2>/dev/null || true
    exit 0
fi

echo "Installing Shotcut..."

sudo apt-get update
sudo apt-get install -y snapd
sudo snap install shotcut --classic

# Post-install verification
if command -v shotcut >/dev/null 2>&1 || (command -v snap >/dev/null 2>&1 && snap list | grep -q shotcut); then
    echo "✅ Shotcut installation successful."
    snap list shotcut 2>/dev/null || shotcut --version 2>/dev/null || true
    exit 0
else
    echo "❌ Shotcut installation failed." >&2
    exit 1
fi
