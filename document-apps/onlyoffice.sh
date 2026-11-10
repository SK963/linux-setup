#!/usr/bin/env bash

set -Eeuo pipefail

# --- Pre-install check ---
if dpkg -s onlyoffice-desktopeditors >/dev/null 2>&1; then
    echo "OnlyOffice already installed. Skipping."
    dpkg -s onlyoffice-desktopeditors 2>/dev/null | grep Version
    exit 0
fi

echo "Installing OnlyOffice..."

# --- Installation steps ---
mkdir -p -m 700 ~/.gnupg
curl -fsSL https://download.onlyoffice.com/GPG-KEY-ONLYOFFICE | gpg --no-default-keyring --keyring gnupg-ring:/tmp/onlyoffice.gpg --import
chmod 644 /tmp/onlyoffice.gpg
sudo mv /tmp/onlyoffice.gpg /usr/share/keyrings/onlyoffice.gpg
echo "deb [signed-by=/usr/share/keyrings/onlyoffice.gpg] https://download.onlyoffice.com/repo/debian squeeze main" | sudo tee /etc/apt/sources.list.d/onlyoffice.list
sudo apt-get update
sudo apt-get install -y onlyoffice-desktopeditors

# --- Post-install verification ---
if dpkg -s onlyoffice-desktopeditors >/dev/null 2>&1; then
    echo "✅ OnlyOffice installation successful."
    dpkg -s onlyoffice-desktopeditors 2>/dev/null | grep Version
    exit 0
else
    echo "❌ OnlyOffice installation failed." >&2
    exit 1
fi
