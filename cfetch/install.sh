#!/bin/bash

##########################################################
# script by Itai-Nelken - https://github.com/Itai-Nelken #
##########################################################

echo "installing cfetch..."
cd $HOME
# Git clone the repo then go to the cfetch directory
git clone https://github.com/clieg/cfetch.git
cd ~/cfetch
# Compile cfetch
make compile
# Install cfetch
sudo make install
