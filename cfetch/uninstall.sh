#!/bin/bash

##########################################################
# script by Itai-Nelken - https://github.com/Itai-Nelken #
##########################################################

echo "uninstalling cfetch..."
cd ~/cfetch
sudo make uninstall
rm -rf ~/cfetch
