#!/bin/bash

cd ~/
mkdir googleearth && cd googleearth
wget https://github.com/chunky-milk/pi-bashscripts-files/raw/main/google-earth/earth.sh 
chmod +x earth.sh

wget https://github.com/chunky-milk/pi-bashscripts-files/raw/main/google-earth/earth.png

echo "[Desktop Entry]
StartupNotify=true
Terminal=false
Type=Application
Name=Google Earth
Path=$HOME/googleearth
Exec=$HOME/googleearth/earth.sh
Icon=$HOME/googleearth/earth.png
Categories=Network;WebApp;Internet
Comment=See the World
GenericName=Earth Viewer" > ~/.local/share/applications/earth.desktop

echo "DONE!"
