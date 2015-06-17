# setting a new npm-global directory (resolving: https://docs.npmjs.com/getting-started/fixing-npm-permissions)
mkdir -p ~/npm-global
npm config set prefix '~/npm-global'
echo "export PATH=~/npm-global/bin:$PATH" > ~/.profile
source ~/.profile

# installing bower, grunt, gulp and n
echo "Installing Bower..."
npm install -g bower &> /dev/null
echo "... done."

echo "Installing Grunt..."
npm install -g grunt-cli &> /dev/null
echo "... done."

echo "Installing Gulp..."
npm install -g gulp &> /dev/null
echo "... done."

echo "Installing N..."
npm install -g n &> /dev/null
echo "... done."

# updating nodejs to the latest stable version
echo "Updating NodeJS to latest stable version..."
sudo n stable &> /dev/null
echo "... done."

# installing yeoman
echo "Installing Yeoman..."
npm install -g yo &> /dev/null
echo "... done."

# fixing NODE_PATH to avoid issues with Yo
echo "export NODE_PATH=$NODE_PATH:~/npm-global/lib/node_modules" >> ~/.bashrc && source ~/.bashrc

# clearing the cache solves some tar.unpack problems... (details: https://github.com/npm/npm/issues/5133)
echo "Clearing NPM cache..."
npm cache clean &> /dev/null
echo "... done."

# creating the project folder
mkdir /vagrant/myapp
echo "Folder /vagrant/myapp created."

echo " "

echo "------------------------------------------------------------"
echo "Your M.E.A.N. Vagrant Virtual Machine is now configured. You"
echo "can start using it by going to the /vagrant/myapp folder and"
echo "play with Yeoman generators."
echo " "
echo "Have fun ;)"
echo "------------------------------------------------------------"