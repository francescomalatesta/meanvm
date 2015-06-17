# updating...
echo "Updating repositories..."
sudo apt-get update &> /dev/null
echo "... done."

# adding nodejs repo
echo "Installing Python Software Properties..."
sudo apt-get install -y python-software-properties &> /dev/null
echo "... done."

# adding mongodb repository
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10 &> /dev/null
sudo echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list &> /dev/null

# installing utilities...
echo "Installing curl, git, build-essential..."
sudo apt-get -y install curl &> /dev/null
sudo apt-get -y install git &> /dev/null
sudo apt-get install -y build-essential &> /dev/null
echo "... done."

echo "Installing NodeJS..."
# preparing nodejs install
sudo add-apt-repository ppa:chris-lea/node.js &> /dev/null
sudo apt-get update &> /dev/null
# installing nodejs
sudo apt-get install -y nodejs &> /dev/null
echo "... done."

echo "Installing MongoDB..."
# installing mongodb
apt-get install -y mongodb-org &> /dev/null
echo "... done."

# installing and setting up npm

echo "Installing NPM..."
sudo curl -s -L https://www.npmjs.com/install.sh | sh > /dev/null 2>&1
sudo npm config set registry http://registry.npmjs.org/ &> /dev/null
echo "... done."