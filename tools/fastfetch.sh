#!/usr/bin/env bash

set +e

if command -v fastfetch >/dev/null 2>&1; then
    echo "fastfetch already installed."
    fastfetch
    exit 0
fi

echo "Installing fastfetch..."

sudo add-apt-repository ppa:zhangsongcui3371/fastfetch -y

sudo apt update

sudo apt install -y fastfetch

if command -v fastfetch >/dev/null 2>&1; then
    echo "fastfetch installation successful."
    fastfetch
    exit 0
else
    echo "fastfetch installation failed."
    exit 1
fi