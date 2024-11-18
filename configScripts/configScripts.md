# Config(uration) Scripts

## Set Computer Name
This script adjusts the /hostname and /hosts values on your linux machine to match with a custom name.
```
/bin/bash -c "$(curl -fsSL https://raw.Githubusercontent.com/JoshKoiro/linux-server-setup/main/configScripts/setComputerName.sh)"
```
## Configure DNS
(This configures the system to use a custom DNS server like AdGuard)
```
/bin/bash -c "$(curl -fsSL https://raw.Githubusercontent.com/JoshKoiro/linux-server-setup/main/configScripts/configDNS.sh)"
```
## Create SSH keys for Github
more details for this script can be found at https://github.com/JoshKoiro/github-ssh
```
/bin/bash -c "$(curl -fsSL https://raw.Githubusercontent.com/JoshKoiro/github-ssh/main/config.sh)"
```

## Change the IP Address of a Proxmox server
This is a simple script to edit the required files of the proxmox linux installation to change the static ip address of the promox server instance.
```
/bin/bash -c "$(curl -fsSL https://raw.Githubusercontent.com/JoshKoiro/linux-server-setup/main/configScripts/change-proxmox-ip.sh)"
```