#!/usr/bin/env bash

set -Eeuo pipefail

# --- Pre-install check ---
if [ -f ~/.joplin/Joplin.AppImage ]; then
    echo "Joplin already installed. Skipping."
    ~/.joplin/Joplin.AppImage --version 2>/dev/null || echo "Joplin installed"
    exit 0
fi

echo "Installing Joplin..."

# --- Installation steps ---
curl -fsSL https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash

# --- Post-install verification ---
if [ -f ~/.joplin/Joplin.AppImage ]; then
    echo "✅ Joplin installation successful."
    ~/.joplin/Joplin.AppImage --version 2>/dev/null || echo "Joplin installed"
    exit 0
else
    echo "❌ Joplin installation failed." >&2
    exit 1
fi
