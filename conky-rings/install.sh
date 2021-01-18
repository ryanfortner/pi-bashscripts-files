#!/bin/bash

sudo apt install conky-all lua50
cp conkyrc /home/pi/.conkyrc && cp conky_rings.lua /home/pi/.conky_rings.lua
mkdir /home/pi/.local/share/fonts
tar -xvf fonts.tar.gz && mv *.ttf /home/pi/.local/share/fonts
rm .uuid
conky -q -d -p 3

clear
echo ""
echo ""
echo "Conky Rings has been installed. Please add to session and startup or run with the following at each restart conky -q -d -p 3"
echo ""
echo ""
