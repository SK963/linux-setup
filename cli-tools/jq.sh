#!/usr/bin/env bash

set +e

if command -v jq >/dev/null 2>&1; then
    echo "jq already installed. Skipping."
    exit 0
fi

echo "Installing jq..."

sudo apt update
sudo apt install -y jq

if command -v jq >/dev/null 2>&1; then
    echo "jq installation successful."
    exit 0
else
    echo "jq installation failed."
    exit 1
fi
