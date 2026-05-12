#!/usr/bin/env bash

set +e

if dpkg -s zsh-syntax-highlighting >/dev/null 2>&1; then
    echo "zsh-syntax-highlighting already installed."
    exit 0
fi

echo "Installing zsh-syntax-highlighting..."

sudo apt update

sudo apt install -y zsh-syntax-highlighting

if dpkg -s zsh-syntax-highlighting >/dev/null 2>&1; then
    echo "zsh-syntax-highlighting installation successful."
    exit 0
else
    echo "zsh-syntax-highlighting installation failed."
    exit 1
fi