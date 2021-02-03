#!/bin/bash

sudo apt-get update
sudo apt install conky-all lua50 -y

wget https://github.com/chunky-milk/pi-bashscripts-files/raw/main/conky-rings/printver-conkyrings
chmod +x printver-conkyrings
sudo mv printver-conkyrings /usr/bin/

mkdir install-conky && cd install-conky

wget -O ~/.conkyrc https://github.com/chunky-milk/pi-bashscripts-files/raw/main/conky-rings/conkyrc

wget -O ~/.conky_rings.lua https://github.com/chunky-milk/pi-bashscripts-files/raw/main/conky-rings/conky_rings.lua

mkdir /home/pi/.local/share/fonts

wget -O ~/fonts.tar.gz https://github.com/chunky-milk/pi-bashscripts-files/raw/main/conky-rings/fonts.tar.gz

tar -xvf fonts.tar.gz && mv *.ttf /home/pi/.local/share/fonts

rm .uuid

mkdir -p ~/.config/autostart
echo -n '' > ~/.config/autostart/conky.desktop
echo "[Desktop Entry]
Name=Conky
Type=Application
Exec=bash -c 'sleep 5;conky -q -d -p 3'
Terminal=false
Comment=system monitoring tool.
Categories=Utility;" > ~/.config/autostart/conky.desktop

conky -q -d -p 3 &

echo ""
echo ""
echo "Conky Rings has been installed. Please add to session and startup or run with the following at each restart conky -q -d -p 3"
echo ""
echo ""
