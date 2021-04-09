#!/bin/bash

##########################################################
# script by Itai-Nelken - https://github.com/Itai-Nelken #
##########################################################

echo "Uninstalling cfetch..."
cd ~/cfetch
sudo make uninstall
rm -rf ~/cfetch
