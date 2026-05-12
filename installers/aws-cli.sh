#!/usr/bin/env bash

set +e

if command -v aws >/dev/null 2>&1; then
    echo "aws already installed. Skipping."
    exit 0
fi

echo "Installing aws..."

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o awscliv2.zip
sudo apt install -y unzip
unzip -o awscliv2.zip
sudo ./aws/install --update

if command -v aws >/dev/null 2>&1; then
    echo "aws installation successful."
    exit 0
else
    echo "aws installation failed."
    exit 1
fi
