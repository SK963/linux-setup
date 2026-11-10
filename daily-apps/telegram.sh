#!/usr/bin/env bash

set -Eeuo pipefail

# Pre-install check
if snap list | grep -q telegram-desktop 2>/dev/null; then
    echo "Telegram already installed. Skipping."
    snap list telegram-desktop 2>/dev/null || true
    exit 0
fi

echo "Installing Telegram..."

sudo snap install telegram-desktop

# Post-install verification
if snap list | grep -q telegram-desktop 2>/dev/null; then
    echo "✅ Telegram installation successful."
    snap list telegram-desktop 2>/dev/null || true
    exit 0
else
    echo "❌ Telegram installation failed." >&2
    exit 1
fi
