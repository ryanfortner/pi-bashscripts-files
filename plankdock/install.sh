#!/bin/bash

# update package sources, install required packages
sudo apt-get update
sudo apt-get install plank compton -y

# copy Plank to autostart on boot
cd ~/.config
mkdir -p autostart
cd autostart
sudo cp /usr/share/applications/plank.desktop ~/.config/autostart
sudo chmod +x plank.desktop
sudo chown pi:pi plank.desktop

# copying Compton to autostart on boot
sudo cp /usr/share/applications/compton.desktop ~/.config/autostart
sudo chmod +x compton.desktop
sudo chown pi:pi compton.desktop

# message
echo ""
echo "Please reboot your system now. If you would like to see the installation tutorial, please navigate to http://bit.do/plankdock."
echo ""
sleep 2
