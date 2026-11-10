#!/usr/bin/env bash

set -Eeuo pipefail

if ! command -v sudo >/dev/null 2>&1; then
    echo "sudo is required to run this script." >&2
    exit 1
fi

echo "Installing keyd..."

if ! dpkg -s keyd >/dev/null 2>&1; then
    if ! command -v add-apt-repository >/dev/null 2>&1; then
        echo "Installing repository management tools..."
        sudo apt-get update
        sudo apt-get install -y software-properties-common
    fi

    sudo apt-get update
    sudo apt-get install -y keyd
else
    echo "keyd already installed"
fi

echo "Creating keyd config..."

sudo install -d -m 755 /etc/keyd
printf '%s\n' \
    '[ids]' \
    '*' \
    '' \
    '[main]' \
    'rightalt = rightcontrol' \
    | sudo tee /etc/keyd/default.conf > /dev/null

echo "Restarting keyd service..."

sudo systemctl daemon-reload
sudo systemctl enable keyd
sudo systemctl restart keyd || sudo systemctl start keyd

echo
echo "Current config:"
echo "--------------------------------"
cat /etc/keyd/default.conf
echo "--------------------------------"

echo
echo "Checking keyd status..."
sudo systemctl --no-pager status keyd | head -n 15

echo
echo "Setup complete."
echo
echo "Now reboot your system:"
echo
echo "    sudo reboot"
echo
echo "After reboot, your Right Alt key should behave as Ctrl system-wide."