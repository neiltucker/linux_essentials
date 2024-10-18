#!/bin/sh
set -e

# Setup for local LLM on Ubuntu 

# Prep system
sudo apt-get update && sudo apt-get autoremove && sudo apt-get autoclean
sudo apt install python3-pip -y
sudo pip install notebook
sudo pip install jupyterlab
sudo apt install chromium-browser -y

# Git
sudo apt install git-all -y

# Docker
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do
    sudo apt-get remove $pkg || true
done

sudo apt-get install ca-certificates curl -y
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update -y
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

# Download Ollama
curl -fsSL https://ollama.com/install.sh | sh

# Install Open WebUI
pip install open-webui

echo "Setup complete. Please reboot your system."
echo "After reboot, you can run 'ollama run llama3' to start Ollama."
echo "To start Open WebUI, run 'open-webui serve' and visit http://localhost:8080"