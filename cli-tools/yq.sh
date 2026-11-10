#!/usr/bin/env bash

set +e

if command -v yq >/dev/null 2>&1; then
    echo "yq already installed. Skipping."
    exit 0
fi

echo "Installing yq..."

sudo snap install yq

if command -v yq >/dev/null 2>&1; then
    echo "yq installation successful."
    exit 0
else
    echo "yq installation failed."
    exit 1
fi
