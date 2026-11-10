#!/usr/bin/env bash

set -Eeuo pipefail

# Pre-install check
if command -v whatsapp-for-linux >/dev/null 2>&1 || (command -v snap >/dev/null 2>&1 && snap list | grep -q whatsapp-for-linux); then
    echo "WhatsApp for Linux already installed. Skipping."
    snap list whatsapp-for-linux 2>/dev/null || true
    exit 0
fi

echo "Installing WhatsApp for Linux..."

sudo apt-get update
sudo apt-get install -y snapd
sudo snap install whatsapp-for-linux

# Post-install verification
if command -v whatsapp-for-linux >/dev/null 2>&1 || (command -v snap >/dev/null 2>&1 && snap list | grep -q whatsapp-for-linux); then
    echo "✅ WhatsApp for Linux installation successful."
    snap list whatsapp-for-linux 2>/dev/null || true
    exit 0
else
    echo "❌ WhatsApp for Linux installation failed." >&2
    exit 1
fi
