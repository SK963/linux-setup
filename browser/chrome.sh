#!/usr/bin/env bash

set -Eeuo pipefail

if command -v google-chrome >/dev/null 2>&1; then
    echo "Google Chrome already installed. Skipping."
    google-chrome --version
    exit 0
fi

if ! command -v sudo >/dev/null 2>&1; then
    echo "sudo is required to run this script." >&2
    exit 1
fi

arch="$(dpkg --print-architecture)"
if [ "$arch" != "amd64" ]; then
    echo "Google Chrome official .deb package only supports amd64 (detected: $arch)." >&2
    exit 1
fi

echo "Installing Google Chrome..."

sudo apt-get update
sudo apt-get install -y curl ca-certificates

tmp_dir="$(mktemp -d)"
cleanup() {
    rm -rf "$tmp_dir"
}
trap cleanup EXIT

# Allow the _apt user to read the downloaded .deb without sandbox warnings.
chmod 755 "$tmp_dir"
deb_path="$tmp_dir/google-chrome-stable_current_amd64.deb"

curl -fsSLo "$deb_path" https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
chmod 644 "$deb_path"

sudo apt-get install -y "$deb_path"

if command -v google-chrome >/dev/null 2>&1; then
    echo "Google Chrome installation successful."
    google-chrome --version
    exit 0
else
    echo "Google Chrome installation failed." >&2
    exit 1
fi

