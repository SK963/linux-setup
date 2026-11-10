#!/usr/bin/env bash

set +e

if command -v batcat >/dev/null 2>&1; then
    echo "batcat already installed. Skipping."
    exit 0
fi

echo "Installing batcat..."

sudo apt update
sudo apt install -y bat

if command -v batcat >/dev/null 2>&1; then
    echo "batcat installation successful."
    exit 0
else
    echo "batcat installation failed."
    exit 1
fi
