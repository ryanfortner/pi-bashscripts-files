#!/bin/bash

# Add repository to papirus.list (APT keyring)
echo "deb http://ppa.launchpad.net/papirus/papirus/ubuntu groovy main" | sudo tee /etc/apt/sources.list.d/papirus.list

# Add repository key
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E58A9D36647CAE7F

# Update repository lists
sudo apt-get update

# Message
echo ""
echo "The Papirus Development Team repository is now installed. You can install packages such as papirus-icon-theme now, and they will be up to date."
echo ""
sleep 1
