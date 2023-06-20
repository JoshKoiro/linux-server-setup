# THINGS THAT SHOULD BE DONE BEFORE RUNNING THIS SCRIPT

# INSTALL LINUX (Debian-based version)
    # Peppermint Linux already has Git and SSH installed
# CONFIGURE ROUTER STATIC IP

read -p "Please enter the local static IP Address of this server: " HOST_IP

# UPDATE REPOS
sudo apt-get update
sudo apt-get upgrade -y

# INSTALL OPEN SSH SERVER
sudo apt-get install openssh-server ii -y

# INSTALL NETSTAT
sudo apt-get install net-tools -y

# status is automatically running
# if you are re-installing a server with the same ip address,
# make sure that you remove the records from your .ssh folder files
# located at /%USERNAME%/.ssh/

# INSTALL TMUX
sudo apt-get install tmux

# INSTALL DOCKER
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh ./get-docker.sh
# clean up files
rm get-docker.sh

# Add user to execute docker commands
sudo usermod -aG docker $USER
su - $USER

# Install Portainer
sudo ./docker/portainerInstall.sh

# Install netdata reporting service
wget -O /tmp/netdata-kickstart.sh https://my-netdata.io/kickstart.sh && sh /tmp/netdata-kickstart.sh --stable-channel --non-interactive --disable-telemetry

# Install AdGuard
sudo ./docker/adguardInstall.sh

# Copy script helper files to user directory
sudo cp scripts ~/

# Install rest of server in Docker Compose file
cd homeServer
sudo docker compose up

# Install Ghost blogging platform
cd ..
cd ghost
sudo docker compose up

# Install Python
sudo apt-get install python3 -y

# Install Node.js with node version manager (NVM)
sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
source ~/.bashrc
source ~/.zshrc
nvm install --lts

# UPDATE logind.conf file so that system doesn't sleep when lid is closed
sudo cp logind.conf /etc/systemd/
sudo reboot
