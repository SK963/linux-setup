#!/usr/bin/env bash

set -Eeuo pipefail

# --- Pre-install check ---
if command -v libreoffice >/dev/null 2>&1; then
    echo "LibreOffice already installed. Skipping."
    libreoffice --version 2>/dev/null || true
    exit 0
fi

echo "Installing LibreOffice..."

# --- Installation steps ---
sudo apt-get update
sudo apt-get install -y libreoffice

# --- Post-install verification ---
if command -v libreoffice >/dev/null 2>&1; then
    echo "✅ LibreOffice installation successful."
    libreoffice --version 2>/dev/null || true
    exit 0
else
    echo "❌ LibreOffice installation failed." >&2
    exit 1
fi
