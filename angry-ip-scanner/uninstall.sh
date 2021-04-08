#!/bin/bash

##########################################################
# script by Itai-Nelken - https://github.com/Itai-Nelken #
##########################################################

echo "Uninstalling Angry IP scanner..."
sudo apt purge -y ipscan
read -p "Do you want to remove dependencies (openjdk-11-jdk rpm fakeroot) (y/n)?" choice
case "$choice" in 
  y|Y ) sudo apt purge openjdk-11-jdk rpm fakeroot -y;;
  n|N ) OK.;;
  * ) echo "Invalid";;
esac
