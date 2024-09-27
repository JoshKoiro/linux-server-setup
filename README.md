# linux-server-setup
Set of scripts for starting local home servers using Peppermint Linux and Docker

***This code has only been written and evaluated by myself, so it should be considered in an alpha state until there are more uses of it on different systems. Since I'm learning and self-taught in regards to Docker and setting up home server systems, I would appreciate any pull requests if you run into any errors or see problems with the code in certain circumstances.***

## Overview
These scripts assume you have a debian based linux distro installed on a computer prior to running the scripts. These scripts are organized into different sections:

- [installScripts](https://github.com/JoshKoiro/linux-server-setup/blob/main/installScripts/installScripts.md) (for installation of programs and services)
- [configScripts](https://github.com/JoshKoiro/linux-server-setup/blob/main/configScripts/configScripts.md) (to automate the process of setting up different system configurations)
- composeScripts (docker-compose files for building useful docker containers)

Click on the links to read more details about the scripts in each section.

## Getting Started
Most of these scripts assume that you run the installCore.sh script prior to anything else. Do this prior to any other script in this repository.

First, we may need to manually run a few commands prior to running the installCore.sh script depending on the how light a version of linux you are running. For Debian based systems, this should not be neccesary, but just in case update and upgrade any existing packages on the system while logged in as root:
```
su -
apt update && apt upgrade -y
```

Next install curl and run the script as root:

```
apt install curl -y && apt install sudo -y
```
Now we can run the installCore.sh script. This command pulls it directly from github and executes the code without having to save any files to disk.
```
/bin/bash -c "$(curl -fsSL https://raw.Githubusercontent.com/JoshKoiro/linux-server-setup/main/installScripts/installCore.sh)"
```
Next, 
Once these core packages are installed you may refer to the table of contents above to browse the other configurations and scripts that can be run.

### Disclaimers

These scripts do not address any special security concerns associated with exposing the server to the open web for remote access outside of the LAN that it is attached to. If you do this, do so at your own discretion and knowledge to understand how this code may or may not pose security risks. This code is provided as-is and you and you alone are responsible for maintaining your computer/network security of your own systems.

## Configuring A Static IP Address on the Local Router

The next step is to allocate a static IP address for your server on your home network. Again, the instructions for this depend very much on your router so again search online for specific instructions making sure to include "static IP address" and your router name in the query.
