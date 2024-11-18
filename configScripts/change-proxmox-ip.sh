#!/bin/bash

# write a script that will change the IP address of the proxmox server

# get the current ip address of the proxmox server
read -p "Enter the IP address of the DNS server you want to use: " CURRENT_IP

# enter the new ip address of the proxmox server
read -p "Enter the new IP address of the proxmox server: " NEW_IP

# edit the /etc/hosts file to change the IP address of the proxmox server
sudo sed -i "s/$CURRENT_IP/$NEW_IP/g" /etc/hosts

# edit the /etc/network/interfaces file to change the IP address of the proxmox server
sudo sed -i "s/$CURRENT_IP/$NEW_IP/g" /etc/network/interfaces

# restart the network service
sudo systemctl restart networking