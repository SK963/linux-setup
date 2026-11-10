#!/usr/bin/env bash

set -Eeuo pipefail

# --- Pre-install check ---
if dpkg -s yacreader >/dev/null 2>&1; then
    echo "YACReader already installed. Skipping."
    dpkg -s yacreader 2>/dev/null | grep Version
    exit 0
fi

echo "Installing YACReader..."

# --- Installation steps ---
sudo add-apt-repository ppa:yacreader/ppa -y
sudo apt-get update
sudo apt-get install -y yacreader

# --- Post-install verification ---
if dpkg -s yacreader >/dev/null 2>&1; then
    echo "✅ YACReader installation successful."
    dpkg -s yacreader 2>/dev/null | grep Version
    exit 0
else
    echo "❌ YACReader installation failed." >&2
    exit 1
fi
