## Set Computer Name
```
/bin/bash -c "$(curl -fsSL https://raw.Githubusercontent.com/JoshKoiro/linux-server-setup/main/configScripts/setComputerName.sh)"
```
## Configure DNS
(This configures the system to use a custom DNS server like AdGuard)
```
/bin/bash -c "$(curl -fsSL https://raw.Githubusercontent.com/JoshKoiro/linux-server-setup/main/configScripts/configDNS.sh)"
```
## Create SSH keys for Github
```
/bin/bash -c "$(curl -fsSL https://raw.Githubusercontent.com/JoshKoiro/github-ssh/main/config.sh)"
```
