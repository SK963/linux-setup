#!/usr/bin/env bash

set -Eeuo pipefail

# Pre-install check
if command -v rustdesk >/dev/null 2>&1; then
    echo "RustDesk already installed. Skipping."
    rustdesk --version 2>/dev/null || true
    exit 0
fi

echo "Installing RustDesk..."

curl -fsSLo /tmp/rustdesk.deb https://github.com/rustdesk/rustdesk/releases/download/1.3.9/rustdesk-1.3.9-x86_64.deb
sudo apt-get install -y /tmp/rustdesk.deb
rm -f /tmp/rustdesk.deb

# Post-install verification
if command -v rustdesk >/dev/null 2>&1; then
    echo "✅ RustDesk installation successful."
    rustdesk --version 2>/dev/null || true
    exit 0
else
    echo "❌ RustDesk installation failed." >&2
    exit 1
fi
