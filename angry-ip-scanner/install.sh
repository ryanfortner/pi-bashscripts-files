#!/bin/bash

##########################################################
# script by Itai-Nelken - https://github.com/Itai-Nelken #
##########################################################

echo "installing alacritty..."
cd $HOME
wget https://github.com/angryip/ipscan/releases/download/3.7.3/ipscan_3.7.3_all.deb
sudo apt install openjdk-11-jdk rpm fakeroot -y
sudo apt --fix-broken -y install ~/ipscan_3.7.3_all.deb
rm ipscan_3.7.3_all.deb
