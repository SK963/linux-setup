#!/usr/bin/env bash

set -Eeuo pipefail

# Pre-install check
if command -v vim >/dev/null 2>&1; then
    echo "Vim already installed. Skipping."
    vim --version | head -n 1 2>/dev/null || true
    exit 0
fi

echo "Installing Vim..."

sudo apt-get update
sudo apt-get install -y vim

# Post-install verification
if command -v vim >/dev/null 2>&1; then
    echo "✅ Vim installation successful."
    vim --version | head -n 1 2>/dev/null || true
    exit 0
else
    echo "❌ Vim installation failed." >&2
    exit 1
fi

