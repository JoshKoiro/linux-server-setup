# INSTALL NALA PACKAGE MANAGER
sudo apt-get install nala -y

# INSTALL OPEN SSH SERVER
sudo nala install openssh-server ii -y
# INSTALL NETSTAT
sudo nala install net-tools -y

# INSTALL neofetch (for pretty screenshots!)
sudo nala install neofetch -y

# status is automatically running
# if you are re-installing a server with the same ip address,
# make sure that you remove the records from your .ssh folder files
# located at /%USERNAME%/.ssh/

# INSTALL TMUX
sudo nala install tmux -y

# INSTALL HOMEBERW
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# INSTALL WGET for downloading files
brew install wget

# INSTALL GUM CLI TOOLS
brew install gum

# INSTALL NEOVIM
brew install neovim

# INSTALL LAZYGIT (FOR LAZYVIM)
brew install lazygit

# Install ripgrep for Lazyvim
brew install ripgrep

# Install fd
brew install fd

# Install bat (cat replacement)
sudo nala install bat -y

# Install Python
sudo nala install python3 -y

# Install Node.js with node version manager (NVM)
sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
source ~/.bashrc
source ~/.zshrc
nvm install --lts

# Install Golang
wget https://go.dev/dl/go1.21.6.linux-amd64.tar.gz
# place the tar.gz file in the correct location. NOTE - you must remove any previous installation of golang using the command rm -rf /usr/local/go prior to running this script
tar -C /usr/local -xzf go1.21.6.linux-amd64.tar.gz
# set the path environment variable
export PATH=$PATH:/usr/local/go/bin