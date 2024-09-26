#!/bin/bash

# Refer to https://go.dev/doc/install for the official install script(s)

# Prompt the user for the application version number
read -p "Enter the version number of the application you want to download: " version

echo "downloading go version $version..."

link="https://go.dev/dl/go${version}.linux-amd64.tar.gz"

echo "downloading from: $link..."

wget link

echo "removing any existing go installation..."
sudo rm -rf /usr/local/go

echo "installing go version $version..."
tar -C /usr/local -xzf go${version}.linux-amd64.tar.gz

echo "adding go to PATH..."
export PATH=$PATH:/usr/local/go/bin
echo "testing install..."
go version
