#!/usr/bin/env bash

set +e

if command -v multipass >/dev/null 2>&1; then
    echo "multipass already installed. Skipping."
    exit 0
fi

echo "Installing multipass..."

sudo snap install multipass

if command -v multipass >/dev/null 2>&1; then
    echo "multipass installation successful."
    exit 0
else
    echo "multipass installation failed."
    exit 1
fi
