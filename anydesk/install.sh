#!/bin/bash

##########################################################
# script by Itai-Nelken - https://github.com/Itai-Nelken #
##########################################################

echo "Downloading anydesk..."
wget https://download.anydesk.com/rpi/anydesk_6.0.1-1_armhf.deb
echo "Installing anydesk..."
sudo apt --fix-broken -y install ./anydesk_6.0.1-1_armhf.deb
rm anydesk_6.0.1-1_armhf.deb
echo "DONE!"
sleep 3
exit