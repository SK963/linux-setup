#!/usr/bin/env bash

set -Eeuo pipefail

if command -v brave-browser >/dev/null 2>&1; then
    echo "Brave Browser already installed. Skipping."
    brave-browser --version
    exit 0
fi

if ! command -v sudo >/dev/null 2>&1; then
    echo "sudo is required to run this script." >&2
    exit 1
fi

echo "Installing Brave Browser..."

sudo apt-get update
sudo apt-get install -y curl ca-certificates

sudo install -d -m 755 /usr/share/keyrings

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg \
    https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
sudo chmod 644 /usr/share/keyrings/brave-browser-archive-keyring.gpg

sudo curl -fsSLo /etc/apt/sources.list.d/brave-browser-release.sources \
    https://brave-browser-apt-release.s3.brave.com/brave-browser.sources
sudo chmod 644 /etc/apt/sources.list.d/brave-browser-release.sources

sudo apt-get update
sudo apt-get install -y brave-browser

if command -v brave-browser >/dev/null 2>&1; then
    echo "Brave Browser installation successful."
    brave-browser --version
    exit 0
else
    echo "Brave Browser installation failed." >&2
    exit 1
fi

