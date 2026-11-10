#!/usr/bin/env bash

set -Eeuo pipefail

# Pre-install check
if command -v freecad >/dev/null 2>&1 || command -v freecadcmd >/dev/null 2>&1; then
    echo "FreeCAD already installed. Skipping."
    freecad --version 2>/dev/null || dpkg -s freecad 2>/dev/null | grep Version || true
    exit 0
fi

echo "Installing FreeCAD..."

sudo apt-get update
sudo apt-get install -y freecad

# Post-install verification
if command -v freecad >/dev/null 2>&1 || command -v freecadcmd >/dev/null 2>&1; then
    echo "✅ FreeCAD installation successful."
    freecad --version 2>/dev/null || dpkg -s freecad 2>/dev/null | grep Version || true
    exit 0
else
    echo "❌ FreeCAD installation failed." >&2
    exit 1
fi

