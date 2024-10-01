# Install Scripts

## Install Core
This script installs all the core components that are used in the other install scripts. They include the following:

- nala package manager
- openssh-server
- net-tools
- neofetch
- tmux
- homebrew
- wget
- fd
- bat
- ripgrep
```
/bin/bash -c "$(curl -fsSL https://raw.Githubusercontent.com/JoshKoiro/linux-server-setup/main/installScripts/installCore.sh)"
```

## Install Docker
```
/bin/bash -c "$(curl -fsSL https://raw.Githubusercontent.com/JoshKoiro/linux-server-setup/main/installScripts/docker.sh)"
```
## Install Dev Tools
Dev tools include Neovim, Lazygit and Ripgrep
```
/bin/bash -c "$(curl -fsSL https://raw.Githubusercontent.com/JoshKoiro/linux-server-setup/main/installScripts/devTools.sh)"
```
## Install Node
```
/bin/bash -c "$(curl -fsSL https://raw.Githubusercontent.com/JoshKoiro/linux-server-setup/main/installScripts/node.sh)"
```
## Install Golang
```
/bin/bash -c "$(curl -fsSL https://raw.Githubusercontent.com/JoshKoiro/linux-server-setup/main/installScripts/go.sh)"
```

## Install Vivaldi Browser
This is for installations that are being accessed over RDP or other protocols
```
/bin/bash -c "$(curl -fsSL https://raw.Githubusercontent.com/JoshKoiro/linux-server-setup/main/installScripts/vivaldi.sh)"
```
