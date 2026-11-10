#!/usr/bin/env bash

set -Eeuo pipefail

# Pre-install check
if command -v unimatrix >/dev/null 2>&1; then
    echo "unimatrix already installed. Skipping."
    exit 0
fi

echo "Installing unimatrix..."

sudo apt-get update
sudo apt-get install -y python3 curl

curl -fsSL https://raw.githubusercontent.com/will8211/unimatrix/master/unimatrix.py -o /tmp/unimatrix
sudo install -m 755 /tmp/unimatrix /usr/local/bin/unimatrix
rm -f /tmp/unimatrix

# Post-install verification
if command -v unimatrix >/dev/null 2>&1; then
    echo "✅ unimatrix installation successful."
    exit 0
else
    echo "❌ unimatrix installation failed." >&2
    exit 1
fi

