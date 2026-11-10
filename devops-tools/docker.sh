#!/usr/bin/env bash

set +e

if command -v docker >/dev/null 2>&1; then
    echo "Docker already installed."
    docker --version
    exit 0
fi

echo "Installing Docker..."

sudo apt update

sudo apt install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

sudo install -m 0755 -d /etc/apt/keyrings

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | \
sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

sudo chmod a+r /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) \
  signed-by=/etc/apt/keyrings/docker.gpg] \
  https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update

sudo apt install -y \
    docker-ce \
    docker-ce-cli \
    containerd.io \
    docker-buildx-plugin \
    docker-compose-plugin

sudo systemctl enable docker
sudo systemctl start docker

sudo usermod -aG docker $USER

if command -v docker >/dev/null 2>&1; then
    echo "Docker installation successful."
    docker --version
    echo
    echo "IMPORTANT:"
    echo "Logout and login again for docker group permissions."
    exit 0
else
    echo "Docker installation failed."
    exit 1
fi