#!/bin/bash
# This script comes from the following website: https://itsfoss.com/install-vivaldi-ubuntu-linux/

# Install wget
sudo apt install wget

# Get public key of the Vivaldi repository
wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | gpg --dearmor | sudo dd of=/usr/share/keyrings/vivaldi-browser.gpg

# Add Vivaldi to the repository
echo "deb [signed-by=/usr/share/keyrings/vivaldi-browser.gpg arch=$(dpkg --print-architecture)] https://repo.vivaldi.com/archive/deb/ stable main" | sudo dd of=/etc/apt/sources.list.d/vivaldi-archive.list

# Update the package and install
sudo apt update && sudo nala install vivaldi-stable
