#!/usr/bin/env bash

set +e

if snap list | grep -q localsend; then
    echo "LocalSend already installed."
    exit 0
fi

echo "Installing LocalSend..."

sudo apt update

sudo apt install -y snapd

sudo systemctl enable snapd
sudo systemctl start snapd

sudo snap install localsend

if snap list | grep -q localsend; then
    echo "LocalSend installation successful."
    exit 0
else
    echo "LocalSend installation failed."
    exit 1
fi