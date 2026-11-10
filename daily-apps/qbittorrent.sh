#!/usr/bin/env bash

set -Eeuo pipefail

# Pre-install check
if command -v qbittorrent >/dev/null 2>&1; then
    echo "qBittorrent already installed. Skipping."
    qbittorrent --version 2>/dev/null || dpkg -s qbittorrent 2>/dev/null | grep Version
    exit 0
fi

echo "Installing qBittorrent..."

sudo apt-get update
sudo apt-get install -y qbittorrent

# Post-install verification
if command -v qbittorrent >/dev/null 2>&1; then
    echo "✅ qBittorrent installation successful."
    qbittorrent --version 2>/dev/null || dpkg -s qbittorrent 2>/dev/null | grep Version
    exit 0
else
    echo "❌ qBittorrent installation failed." >&2
    exit 1
fi
