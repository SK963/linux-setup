#!/usr/bin/env bash

set +e

if command -v postman >/dev/null 2>&1; then
    echo "postman already installed. Skipping."
    exit 0
fi

echo "Installing postman..."

sudo snap install postman

if command -v postman >/dev/null 2>&1; then
    echo "postman installation successful."
    exit 0
else
    echo "postman installation failed."
    exit 1
fi
