# INSTALL NALA PACKAGE MANAGER
sudo apt-get install nala -y

# INSTALL OPEN SSH SERVER
sudo nala install openssh-server ii -y
# INSTALL NETSTAT
sudo nala install net-tools -y

# INSTALL neofetch (for pretty screenshots!)
sudo nala install neofetch -y

# INSTALL TMUX
sudo nala install tmux -y

# INSTALL HOMEBREW
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# INSTALL WGET for downloading files
brew install wget

# Install fd
brew install fd

# Install bat (cat replacement)
sudo nala install bat -y

# INSTALL NEOVIM
brew install neovim

# INSTALL LAZYGIT (FOR LAZYVIM)
brew install lazygit

# Install ripgrep for Lazyvim
brew install ripgrep
