#!/bin/bash

# Install MongoDB
# 
# http://docs.mongodb.org/manual/tutorial/install-mongodb-on-ubuntu/
# 1. Import the public key used by the package management system
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
# 2. Create a list file for MongoDB
echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list
# 3. Reload local package database
sudo apt-get update
# 4. Install the MongoDB packages (v3.0.5)
# sudo apt-get install -y mongodb-org # install current version
sudo apt-get install -y mongodb-org=3.0.5 mongodb-org-server=3.0.5 mongodb-org-shell=3.0.5 mongodb-org-mongos=3.0.5 mongodb-org-tools=3.0.5
# 5. Pin to specific version of MongoDB, so apt-get doesn't update on its own when new versions are available
echo "mongodb-org hold" | sudo dpkg --set-selections
echo "mongodb-org-server hold" | sudo dpkg --set-selections
echo "mongodb-org-shell hold" | sudo dpkg --set-selections
echo "mongodb-org-mongos hold" | sudo dpkg --set-selections
echo "mongodb-org-tools hold" | sudo dpkg --set-selections
