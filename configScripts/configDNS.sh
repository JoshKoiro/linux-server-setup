#!/bin/bash

# Make sure systemd-resolved is installed on system (debian 12 doesn't install this by default)
# see link: https://forums.debian.net/viewtopic.php?t=155118

# Check if nala is installed, and install if necessary
if ! command -v nala &>/dev/null; then
  sudo apt update && sudo apt install nala -y
fi

# Install and start the resolvectl service
sudo nala install systemd-resolved -y

# Get the primary network interface
PRIMARY_INTERFACE=$(ip route | grep default | awk '{print $5}' | head -n1)

if [ -z "$PRIMARY_INTERFACE" ]; then
  echo "Error: Unable to detect primary network interface."
  exit 1
fi

echo "Detected primary network interface: $PRIMARY_INTERFACE"

# Get the IP address of the DNS server
read -p "Enter the IP address of the DNS server you want to use: " DNS_IP

# Set the new DNS configuration for the primary interface
sudo resolvectl dns "$PRIMARY_INTERFACE" "$DNS_IP"

# Restart the resolvconf service
sudo systemctl restart systemd-resolved

echo "Configuration complete!"
echo "DNS servers configured for $PRIMARY_INTERFACE:"
resolvectl dns "$PRIMARY_INTERFACE"
