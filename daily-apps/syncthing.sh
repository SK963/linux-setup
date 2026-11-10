#!/usr/bin/env bash

set -Eeuo pipefail

# Pre-install check
if command -v syncthing >/dev/null 2>&1; then
    echo "Syncthing already installed. Skipping."
    syncthing --version 2>/dev/null || true
    exit 0
fi

echo "Installing Syncthing..."

sudo mkdir -p /etc/apt/keyrings
sudo curl -fsSLo /etc/apt/keyrings/syncthing-archive-keyring.gpg https://syncthing.net/release-key.gpg
echo "deb [signed-by=/etc/apt/keyrings/syncthing-archive-keyring.gpg] https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list
sudo apt-get update
sudo apt-get install -y syncthing

# Post-install verification
if command -v syncthing >/dev/null 2>&1; then
    echo "✅ Syncthing installation successful."
    syncthing --version 2>/dev/null || true
    exit 0
else
    echo "❌ Syncthing installation failed." >&2
    exit 1
fi
