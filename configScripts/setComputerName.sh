#!/bin/bash

# Prompt for the new computer name
read -p "What should this computer be called? " computerName

# Change the hostname using hostnamectl
sudo hostnamectl set-hostname $computerName

# Update /etc/hosts
sudo sed -i "s/127\.0\.1\.1.*/127.0.1.1   $computerName/" /etc/hosts

# If there's no entry for 127.0.1.1, append it
if ! grep -q "127.0.1.1" /etc/hosts; then
  echo "127.0.1.1   $computerName" | sudo tee -a /etc/hosts
fi

# Confirm the change and reboot
echo "Hostname changed to $computerName. Rebooting system..."
sleep 3
sudo reboot
