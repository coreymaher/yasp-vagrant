# Install dependencies
sudo apt-get -y install git

# Create /home/yasp
sudo install -g vagrant -o vagrant -d /home/yasp
sudo chmod 755 /home/yasp

# Clone yasp repo into /home/yasp/
su - vagrant <<COMMANDS
git clone https://github.com/yasp-dota/yasp /home/yasp
COMMANDS
