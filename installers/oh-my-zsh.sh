#!/usr/bin/env bash

set +e

if command -v zsh >/dev/null 2>&1; then
    echo "zsh already installed. Skipping."
    exit 0
fi

echo "Installing zsh..."

sudo apt update
sudo apt install -y zsh curl git fonts-powerline
if [ ! -d "$HOME/.oh-my-zsh" ]; then
RUNZSH=no CHSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

if command -v zsh >/dev/null 2>&1; then
    echo "zsh installation successful."
    exit 0
else
    echo "zsh installation failed."
    exit 1
fi
