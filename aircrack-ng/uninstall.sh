#!/bin/bash

##########################################################
# script by Itai-Nelken - https://github.com/Itai-Nelken #
##########################################################

echo "Installing aircrack-ng..."
echo "Removing dependencies..."
sudo apt purge libssl-dev subversion iw libnl-dev macchanger sqlite3 reaver -y
sudo apt purge libnl-3-dev libnl-genl-3-dev -y
cd aircrack-ng
echo "Uninstalling..."
sudo make uninstall
cd scripts
sudo make uninstall
