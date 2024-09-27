#!/bin/bash
read -p "what should this computer be called? " computerName
sudo hostnamectl set-hostname $computerName
