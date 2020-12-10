#!/bin/bash

# Add repository source to apt sources.list
echo "deb http://ports.ubuntu.com/ubuntu-ports bionic-updates main" | sudo tee /etc/apt/sources.list.d/ubuntu.list

# Add ubuntu keyring
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 3B4FE6ACC0B21F32

# Add preferences so the ubuntu repositories don't become your "default" repositories
sudo echo "Package: *
Pin: release a=bionic-updates
Pin-Priority: 1" > /etc/apt/preferences.d/99bionic-updates

# Finally, get the packages and update.
sudo apt update && sudo apt install firefox -y
