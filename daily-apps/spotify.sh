#!/usr/bin/env bash

set -Eeuo pipefail

# Pre-install check
if command -v spotify >/dev/null 2>&1 || (command -v snap >/dev/null 2>&1 && snap list | grep -q spotify); then
    echo "Spotify already installed. Skipping."
    spotify --version 2>/dev/null || snap list spotify 2>/dev/null || true
    exit 0
fi

echo "Installing Spotify..."

sudo apt-get update
sudo apt-get install -y curl gnupg

curl -sS https://download.spotify.com/debian/pubkey_6224F9941A8AA6D1.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb [signed-by=/etc/apt/trusted.gpg.d/spotify.gpg] http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install -y spotify-client

# Post-install verification
if command -v spotify >/dev/null 2>&1 || (command -v snap >/dev/null 2>&1 && snap list | grep -q spotify); then
    echo "✅ Spotify installation successful."
    spotify --version 2>/dev/null || snap list spotify 2>/dev/null || true
    exit 0
else
    echo "❌ Spotify installation failed." >&2
    exit 1
fi

