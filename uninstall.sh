#!/bin/bash

##########################################################
# script by Itai-Nelken - https://github.com/Itai-Nelken #
##########################################################

echo "uninstalling firefox..."
sudo apt purge firefox -y
sudo rm /etc/apt/preferences.d/99bionic-updates
sudo rm /etc/apt/sources.list.d/ubuntu.list
