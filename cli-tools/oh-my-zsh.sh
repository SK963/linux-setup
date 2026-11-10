#!/usr/bin/env bash

set +e

ZSH_PATH="$(command -v zsh 2>/dev/null)"
OMZ_INSTALLED=false

if [ -n "$ZSH_PATH" ]; then
    echo "zsh already installed: $ZSH_PATH"
else
    echo "Installing zsh & Oh My Zsh..."

    sudo apt update
    sudo apt install -y zsh curl git fonts-powerline

    ZSH_PATH="$(command -v zsh 2>/dev/null)"

    if [ -z "$ZSH_PATH" ]; then
        echo "zsh installation failed." >&2
        exit 1
    fi

    echo "zsh installation successful."
    OMZ_INSTALLED=true
fi

# Install Oh My Zsh if not already present
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Installing Oh My Zsh..."
    RUNZSH=no CHSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    OMZ_INSTALLED=true
else
    echo "Oh My Zsh already installed. Skipping."
fi

# Set zsh as the default shell for the current user
CURRENT_SHELL="$(getent passwd "$USER" | cut -d: -f7)"
if [ "$CURRENT_SHELL" != "$ZSH_PATH" ]; then
    echo "Setting zsh as default shell for $USER..."
    # Ensure zsh is listed in /etc/shells
    if ! grep -qxF "$ZSH_PATH" /etc/shells; then
        echo "$ZSH_PATH" | sudo tee -a /etc/shells > /dev/null
    fi
    sudo chsh -s "$ZSH_PATH" "$USER"
    echo "Default shell changed to zsh. Please log out and back in for it to take effect."
else
    echo "zsh is already the default shell. Skipping."
fi
