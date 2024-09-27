#!/bin/bash

# backup /etc/resolv.conf
sudo cp /etc/resolv.conf /etc/resolv.conf.bak
# get the IP address of the DNS server
read -p "Enter the IP address of the DNS server you want to use: " DNS_IP
# write the new resolved.conf
echo "nameserver $DNS_IP" > /etc/resolv.conf
# restart resolved service
sudo systemctl reload-or-restart systemd-resolved