#!/usr/bin/env bash

set +e

if command -v code >/dev/null 2>&1; then
    echo "code already installed. Skipping."
    exit 0
fi

echo "Installing code..."

sudo apt install -y wget gpg apt-transport-https software-properties-common
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" | sudo tee /etc/apt/sources.list.d/vscode.list
rm -f packages.microsoft.gpg
sudo apt update
sudo apt install -y code

if command -v code >/dev/null 2>&1; then
    echo "code installation successful."
    exit 0
else
    echo "code installation failed."
    exit 1
fi
