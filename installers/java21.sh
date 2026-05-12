#!/usr/bin/env bash

set +e

if command -v java >/dev/null 2>&1; then
    echo "java already installed. Skipping."
    exit 0
fi

echo "Installing java..."

sudo apt update
sudo apt install -y openjdk-21-jdk

if command -v java >/dev/null 2>&1; then
    echo "java installation successful."
    exit 0
else
    echo "java installation failed."
    exit 1
fi
