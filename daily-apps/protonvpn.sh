#!/usr/bin/env bash

set -Eeuo pipefail

# Pre-install check
if dpkg -s protonvpn-gnome-desktop >/dev/null 2>&1; then
    echo "ProtonVPN already installed. Skipping."
    dpkg -s protonvpn-gnome-desktop 2>/dev/null | grep Version
    exit 0
fi

echo "Installing ProtonVPN..."

curl -fsSLo /tmp/protonvpn-stable-release.deb https://repo.protonvpn.com/debian/dists/stable/main/binary-all/protonvpn-stable-release_1.0.6_all.deb
sudo apt-get install -y /tmp/protonvpn-stable-release.deb
rm -f /tmp/protonvpn-stable-release.deb
sudo apt-get update
sudo apt-get install -y protonvpn-gnome-desktop

# Post-install verification
if dpkg -s protonvpn-gnome-desktop >/dev/null 2>&1; then
    echo "✅ ProtonVPN installation successful."
    dpkg -s protonvpn-gnome-desktop 2>/dev/null | grep Version
    exit 0
else
    echo "❌ ProtonVPN installation failed." >&2
    exit 1
fi
