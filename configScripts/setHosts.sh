#!/bin/bash

# Get the directory of the script
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"

# Define the path to hostsList.txt
HOSTS_LIST="$SCRIPT_DIR/hostsList.txt"

# Check if hostsList.txt exists
if [ ! -f "$HOSTS_LIST" ]; then
  echo "Error: 'hostsList.txt' not found in the script directory."
  echo "Please ensure 'hostsList.txt' is in the same folder as this script."
  exit 1
fi

# Check if /etc/hosts exists
if [ ! -f "/etc/hosts" ]; then
  echo "Error: /etc/hosts file not found."
  exit 1
fi

# Create a temporary file
temp_file=$(mktemp)

# Prepend the contents of hostsList.txt to the temporary file
cat "$HOSTS_LIST" /etc/hosts >"$temp_file"

# Use sed to replace the contents of /etc/hosts with the temporary file
sudo sed -i.bak -e '1r '"$temp_file" -e '1{h;d}' -e '2{x;G}' /etc/hosts

# Remove the temporary file
rm "$temp_file"

echo "Contents of 'hostsList.txt' have been prepended to /etc/hosts"
echo "A backup of the original file has been created as /etc/hosts.bak"
