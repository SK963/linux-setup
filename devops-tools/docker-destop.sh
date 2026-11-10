#!/usr/bin/env bash

set +e

if dpkg -l | grep -q docker-desktop; then
    echo "Docker Desktop already installed."
    exit 0
fi

echo "Installing Docker Desktop..."

sudo apt update

sudo apt install -y \
    ca-certificates \
    curl \
    gnome-terminal \
    pass \
    uidmap

if ! command -v docker >/dev/null 2>&1; then
    echo "Docker Engine not found."
    echo "Install docker.sh first."
    exit 1
fi

ARCH=$(dpkg --print-architecture)

if [ "$ARCH" = "amd64" ]; then
    FILE="docker-desktop-amd64.deb"
    URL="https://desktop.docker.com/linux/main/amd64/docker-desktop-amd64.deb"
elif [ "$ARCH" = "arm64" ]; then
    FILE="docker-desktop-arm64.deb"
    URL="https://desktop.docker.com/linux/main/arm64/docker-desktop-arm64.deb"
else
    echo "Unsupported architecture: $ARCH"
    exit 1
fi

wget -O "$FILE" "$URL"

sudo apt install -y ./"$FILE"

systemctl --user enable docker-desktop
systemctl --user start docker-desktop

if dpkg -l | grep -q docker-desktop; then
    echo "Docker Desktop installation successful."
    exit 0
else
    echo "Docker Desktop installation failed."
    exit 1
fi  