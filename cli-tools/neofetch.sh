#!/usr/bin/env bash

set +e

if command -v neofetch >/dev/null 2>&1; then
    echo "neofetch already installed. Skipping."
    exit 0
fi

echo "Installing neofetch..."

sudo apt update
sudo apt install -y neofetch

if command -v neofetch >/dev/null 2>&1; then
    echo "neofetch installation successful."
    exit 0
else
    echo "neofetch installation failed."
    exit 1
fi
