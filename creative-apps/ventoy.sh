#!/usr/bin/env bash

set -Eeuo pipefail

# Pre-install check
if command -v ventoy >/dev/null 2>&1 || [ -f /opt/ventoy/Ventoy2Disk.sh ]; then
    echo "Ventoy already installed. Skipping."
    exit 0
fi

echo "Installing Ventoy..."

VENTOY_VER="1.0.99"
curl -fsSLo /tmp/ventoy.tar.gz "https://github.com/ventoy/Ventoy/releases/download/v${VENTOY_VER}/ventoy-${VENTOY_VER}-linux.tar.gz"
sudo tar -xzf /tmp/ventoy.tar.gz -C /opt/
sudo ln -sfn "/opt/ventoy-${VENTOY_VER}" /opt/ventoy
sudo ln -sf /opt/ventoy/VentoyGUI.x86_64 /usr/local/bin/ventoy-gui 2>/dev/null || true
sudo ln -sf /opt/ventoy/Ventoy2Disk.sh /usr/local/bin/ventoy
rm -f /tmp/ventoy.tar.gz

# Post-install verification
if command -v ventoy >/dev/null 2>&1 || [ -f /opt/ventoy/Ventoy2Disk.sh ]; then
    echo "✅ Ventoy installation successful (version ${VENTOY_VER})."
    exit 0
else
    echo "❌ Ventoy installation failed." >&2
    exit 1
fi

