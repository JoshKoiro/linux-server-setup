#!/bin/bash

# Make sure systemd-resolved is installed on system (debian 12 doesn't install this by default)
# see link: https://forums.debian.net/viewtopic.php?t=155118

# Check if nala is installed, and install if necessary
if ! command -v nala &>/dev/null; then
  sudo apt update && sudo apt install nala -y
fi

# Install and start the resolvconf service
sudo nala install resolvconf -y

sudo systemctl start resolvconf
sudo systemctl enable resolvconf

# Backup /etc/resolv.conf
sudo cp /etc/resolv.conf /etc/resolv.conf.bak

# Get the IP address of the DNS server
read -p "Enter the IP address of the DNS server you want to use: " DNS_IP

# Ensure the directory and file exist, then append the DNS IP
sudo mkdir -p /etc/resolv.conf.d
sudo touch /etc/resolv.conf.d/head
echo "nameserver $DNS_IP" | sudo tee -a /etc/resolv.conf.d/head

# Restart the resolvconf service
sudo systemctl restart resolvconf

echo "Configuration complete! Please restart the system using 'sudo reboot'..."
