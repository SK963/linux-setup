#!/usr/bin/env bash

set +e

if command -v gh >/dev/null 2>&1; then
    echo "GitHub CLI already installed."
    gh --version
    exit 0
fi

echo "Installing GitHub CLI..."

sudo apt update

sudo apt install -y curl gpg

curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | \
sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg

sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | \
sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null

sudo apt update

sudo apt install -y gh

if command -v gh >/dev/null 2>&1; then
    echo "GitHub CLI installation successful."
    gh --version
    exit 0
else
    echo "GitHub CLI installation failed."
    exit 1
fi