# Install dependencies
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get -y install make g++ build-essential openjdk-8-jdk git maven

# Create /home/yasp
sudo install -g vagrant -o vagrant -d /home/yasp
sudo chmod 755 /home/yasp

# Clone yasp repo into /home/yasp/
git clone https://github.com/yasp-dota/yasp /home/yasp

# Install NVM and Node
export NODE_VERSION=5.8.0
su - vagrant <<COMMANDS
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash
source /home/vagrant/.nvm/nvm.sh
nvm install $NODE_VERSION
nvm alias default $NODE_VERSION
nvm use $NODE_VERSION
cd /home/yasp/
npm install -g npm
npm install -g pm2
npm install
COMMANDS
