#!/bin/bash

##########################################################
# script by Itai-Nelken - https://github.com/Itai-Nelken #
##########################################################

echo "installing bleachbit..."

wget -O ~/bleachbit.deb https://download.bleachbit.org/bleachbit_4.2.0-0_all_debian10.deb
sudo apt --fix-broken -y install ~/bleachbit.deb
rm bleachbit.deb

