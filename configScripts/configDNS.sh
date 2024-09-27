#!/bin/bash

# Make sure systemd-resolved is installed on system (debian 12 doesn't install this be default)
# see link: https://forums.debian.net/viewtopic.php?t=155118

# Install and start the resolvconf service
sudo nala install resolvconf -y

sudo systemctl start resolvconf
sudo systemctl enable resolvconf

# backup /etc/resolv.conf
sudo cp /etc/resolv.conf /etc/resolv.conf.bak
# get the IP address of the DNS server
read -p "Enter the IP address of the DNS server you want to use: " DNS_IP
# write the new resolved.conf
sudo echo "nameserver $DNS_IP" >>/etc/resolv.conf.d/head
# restart resolved service
sudo systemctl restart resolvconf

echo "configuration complete! Please restart the system using sudo reboot..."
