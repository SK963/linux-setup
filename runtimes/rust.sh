#!/usr/bin/env bash

set +e

if command -v rustc >/dev/null 2>&1; then
    echo "rustc already installed. Skipping."
    exit 0
fi

echo "Installing rustc..."

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

if command -v rustc >/dev/null 2>&1; then
    echo "rustc installation successful."
    exit 0
else
    echo "rustc installation failed."
    exit 1
fi
