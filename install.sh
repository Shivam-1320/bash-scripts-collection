#!/bin/bash

set -e

echo "[+] Installing AutoWebDeploy..."

# Add repo
echo "deb [trusted=yes] https://shivam-1320.github.io/Autowebdeploy stable main" | sudo tee /etc/apt/sources.list.d/autowebdeploy.list

# Update
sudo apt update

# Install
sudo apt install autowebdeploy -y

echo "[✔] Installation complete!"
