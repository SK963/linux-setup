#!/usr/bin/env bash

set -e

echo "Installing keyd..."

sudo apt update

if ! dpkg -s keyd >/dev/null 2>&1; then
    sudo add-apt-repository ppa:keyd-team/ppa -y
    sudo apt update
    sudo apt install -y keyd
else
    echo "keyd already installed"
fi

echo "Creating keyd config..."

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
sudo systemctl restart keyd

echo
echo "Current config:"
echo "--------------------------------"
cat /etc/keyd/default.conf
echo "--------------------------------"

echo
echo "Checking keyd status..."
systemctl --no-pager status keyd | head -n 15

echo
echo "Setup complete."
echo
echo "Now reboot your system:"
echo
echo "    sudo reboot"
echo
echo "After reboot, your Right Alt key should behave as Ctrl system-wide."