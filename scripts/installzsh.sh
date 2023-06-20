# INSTALL OH-MY-ZSH WITH POWERLEVEL10K THEME

# Install font 
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Ubuntu.zip
unzip Ubuntu.zip -d ~/.fonts
fc-cache -fv

# Install Zsh shell
sudo apt-get install zsh -y
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install PowerLevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k

# Replace default theme with PowerLevel Theme
# PLACE WGET COMMAND HERE TO DOWNLOAD PRESET CONFIG FILE (.zshrc)

# Refresh 