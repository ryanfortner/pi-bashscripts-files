#!/bin/bash

# Purge packages compton/plank
sudo apt purge compton plank -y
sudo apt autoremove -y

cd ~/.config/autostart
sudo rm plank.desktop && sudo rm compton.desktop

echo ""
echo "You may have to reboot in order for the changes to take effect."
echo ""
sleep 2
