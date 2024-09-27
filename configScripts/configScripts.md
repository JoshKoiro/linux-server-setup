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
