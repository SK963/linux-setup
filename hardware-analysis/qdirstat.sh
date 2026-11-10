#!/usr/bin/env bash

set -Eeuo pipefail

# Pre-install check
if command -v qdirstat >/dev/null 2>&1 || dpkg -s qdirstat >/dev/null 2>&1; then
    echo "QDirStat already installed. Skipping."
    dpkg -s qdirstat 2>/dev/null | grep Version || true
    exit 0
fi

echo "Installing QDirStat..."

sudo apt-get update
sudo apt-get install -y qdirstat

# Post-install verification
if command -v qdirstat >/dev/null 2>&1 || dpkg -s qdirstat >/dev/null 2>&1; then
    echo "✅ QDirStat installation successful."
    dpkg -s qdirstat 2>/dev/null | grep Version || true
    exit 0
else
    echo "❌ QDirStat installation failed." >&2
    exit 1
fi

