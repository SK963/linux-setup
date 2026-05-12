#!/usr/bin/env bash

set +e

if command -v dust >/dev/null 2>&1; then
    echo "dust already installed. Skipping."
    exit 0
fi

echo "Installing dust..."

cargo install du-dust

if command -v dust >/dev/null 2>&1; then
    echo "dust installation successful."
    exit 0
else
    echo "dust installation failed."
    exit 1
fi
