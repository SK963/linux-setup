#!/usr/bin/env bash

set -Eeuo pipefail

# --- Pre-install check ---
if snap list | grep -q obsidian; then
    echo "Obsidian already installed. Skipping."
    snap list obsidian
    exit 0
fi

echo "Installing Obsidian..."

# --- Installation steps ---
sudo snap install obsidian --classic

# --- Post-install verification ---
if snap list | grep -q obsidian; then
    echo "✅ Obsidian installation successful."
    snap list obsidian
    exit 0
else
    echo "❌ Obsidian installation failed." >&2
    exit 1
fi
