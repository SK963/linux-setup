#!/usr/bin/env bash

set +e

if command -v btm >/dev/null 2>&1; then
    echo "btm already installed. Skipping."
    exit 0
fi

echo "Installing btm..."

cargo install bottom

if command -v btm >/dev/null 2>&1; then
    echo "btm installation successful."
    exit 0
else
    echo "btm installation failed."
    exit 1
fi
