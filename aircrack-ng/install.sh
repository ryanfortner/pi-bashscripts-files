#!/bin/bash

##########################################################
# script by Itai-Nelken - https://github.com/Itai-Nelken #
##########################################################

echo "installing aircrack-ng..."
echo "installing dependencies..."
sudo apt update
sudo apt install libssl-dev subversion iw libnl-dev macchanger sqlite3 reaver -y
sudo apt install libnl-3-dev libnl-genl-3-dev -y
echo "downloading aircrack-ng source..."
wget https://github.com/chunky-milk/pi-bashscripts-files/raw/main/aircrack-ng/aircrack-ng-1.2-rc4.tar.gz
echo "extracting aircrack-ng source..."
tar xzvf aircrack-ng-1.2-rc4.tar.gz
mv aircrack-ng-1.2-rc4 aircrack-ng
cd aircrack-ng
#compile
read -p "are you on a pi 4 (answer no if you have an older model) (y/n)?" choice
case "$choice" in 
  y|Y ) make -j4;;
  n|N ) make;;
  * ) echo "invalid";;
esac
echo "installing..."
sudo make install
sudo airodump-ng-oui-update
cd scripts
sudo make install
