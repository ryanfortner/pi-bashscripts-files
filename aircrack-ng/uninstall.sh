#!/bin/bash

##########################################################
# script by Itai-Nelken - https://github.com/Itai-Nelken #
##########################################################

echo "installing aircrack-ng..."
echo "removing dependencies..."
sudo apt purge libssl-dev subversion iw libnl-dev macchanger sqlite3 reaver -y
sudo apt purge libnl-3-dev libnl-genl-3-dev -y
cd aircrack-ng
echo "uninstalling..."
sudo make uninstall
cd scripts
sudo make uninstall
