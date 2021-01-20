#!/bin/bash

##########################################################
# script by Itai-Nelken - https://github.com/Itai-Nelken #
##########################################################

echo "installing Angry IP scanner..."
cd $HOME
echo "Downloading..."
wget https://github.com/angryip/ipscan/releases/download/3.7.3/ipscan_3.7.3_all.deb
echo "installing dependencies..."
sudo apt install openjdk-11-jdk rpm fakeroot -y
echo "Installing..."
sudo apt --fix-broken -y install ~/ipscan_3.7.3_all.deb
rm ipscan_3.7.3_all.deb
