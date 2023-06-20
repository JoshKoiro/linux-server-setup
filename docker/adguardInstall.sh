#!/bin/bash

# replace resolved.conf to allow AdGuard to use port 53
    sudo cp resolved.conf /etc/systemd/
    sudo systemctl reload-or-restart systemd-resolved

# Create Docker Container
docker run --name adguardhome\
    --restart unless-stopped\
    -v /home/docker/adguard/workdir:/opt/adguardhome/work\
    -v /home/docker/adguard/confdir:/opt/adguardhome/conf\
    -p 53:53/tcp -p 53:53/udp\
    -p 8180:80/tcp -p 443:443/tcp -p 443:443/udp -p 3030:3000/tcp\
    -p 853:853/tcp\
    -p 784:784/udp -p 853:853/udp -p 8853:8853/udp\
    -p 5443:5443/tcp -p 5443:5443/udp\
    -d adguard/adguardhome
