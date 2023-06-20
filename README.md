# linux-server-setup
Set of scripts for starting local home servers using Peppermint Linux and Docker

***This code has only been written and evaluated by myself, so it should be considered in an alpha state until there are more uses of it on different systems. Since I'm learning and self-taught in regards to Docker and setting up home server systems, I would appreciate any pull requests if you run into any errors or see problems with the code in certain circumstances.***

## Overview
These scripts assume you have a debian based linux distro installed on a computer prior to running the scripts. The majority of the services that will be installed are going to be running in isolated docker containers on the system.

### Included Services

Below are a list of the additional programs and services that are added by this install script and will be running at completion of the installation process.

- OpenSSH Server
- Net-Tools
- [TMux](https://github.com/tmux/tmux/wiki)
- [NetData](https://www.netdata.cloud)
- [Python](https://www.python.org)
- [Node.js](https://nodejs.org/en)
- [Docker](https://www.docker.com)
- [Portainer](https://www.portainer.io) (Docker Container)
- [AdGuard](https://adguard.com/en/welcome.html) (Docker Container)
- [Pocketbase](https://pocketbase.io) (Docker Container)
- [SpeedTest](https://hub.docker.com/r/henrywhitaker3/speedtest-tracker) (Docker Container)
- [Organizr Dashboard](https://docs.organizr.app) (Docker Container)
- [Ghost](https://ghost.org) (Docker Container)

### Disclaimers

This code is designed to be used with Linux Desktop operating systems rather than a Server OS instances. This is for ease of use to debug any issues that may occur. This may be used with other server OS versions but I cannot guarantee all of the needed install requirements have been met to run the scripts on minimal installations.

These scripts do not address any special security concerns associated with exposing the server to the open web for remote access outside of the LAN that it is attached to. If you do this, do so at your own discretion and knowledge to understand how this code may or may not pose security risks. This code is provided as-is and you and you alone are responsible for maintaining your computer/network security of your own systems.

## Installing Peppermint Linux

The first step to installing any version of linux easily is to create a USB boot drive. There are many guides on how to do this online. Installing Linux on your device will differ depending on the device and BIOS settings so find instructions online about "How to install OS from USB device on [insert computer name]"

After installing the OS on the new computer, boot up and login to the device. Make sure that it is connected to your network via wifi or ethernet before continuing.

## Configuring A Static IP Address on the Local Router

The next step is to allocate a static IP address for your server on your home network. Again, the instructions for this depend very much on your router so again search online for specific instructions making sure to include "static IP address" and your router name in the query.

## Running the Install Script

Once you have Linux installed and the static IP address configured, you may open the terminal on the server and write the following commands:

```
git clone https://github.com/JoshKoiro/linux-server-setup.git
```
Once these files have been downloaded, run the following command:
```
cd linux-server-setup && sudo ./installServer.sh
```

This will proceed to run through the main script that will install all of the setup items and services listed above.
Once complete, the system will reboot and you can ssh from a remote computer into the server to begin managing scripts and services
