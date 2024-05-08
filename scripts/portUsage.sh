#!/bin/bash

# Check if the script is run as root
if [ "$(id -u)" != "0" ]; then
    echo "This script must be run as root" 1>&2
    exit 1
fi

# Get open ports and corresponding PIDs
open_ports=$(netstat -tuln | grep -E 'LISTEN' | awk '{print $4}' | awk -F ":" '{print $NF}')
applications=()

# Print table header
printf "%-20s %-10s\n" "Application" "Port"
echo "----------------------------------"

for port in $open_ports; do
    pid=$(lsof -i :$port | grep LISTEN | awk '{print $2}')
    if [ -n "$pid" ]; then
        application=$(ps -o comm= -p $pid)
    else
        application="N/A"
    fi
    printf "%-20s %-10s\n" "$application" "$port"
done
