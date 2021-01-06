#!/bin/bash

git clone https://github.com/FD-/RPiPlay.git
cd RPiPlay
sudo apt-get update
sudo apt-get install cmake -y
sudo apt-get install libavahi-compat-libdnssd-dev -y
sudo apt-get install libplist-dev -y
sudo apt-get install libssl-dev -y

mkdir build
cd build
cmake ..
make
sudo make install

wget https://github.com/chunky-milk/pi-bashscripts-files/raw/main/RPiPlay/start-rpiplay.sh
chmod +x start-rpiplay.sh
mv start-rpiplay.sh ~/.local/share/start-rpiplay.sh

wget https://github.com/chunky-milk/pi-bashscripts-files/raw/main/RPiPlay/668275.png
mv 668275.png rpiplay.png
mv rpiplay.png ~/.local/share/rpiplay.png

echo "[Desktop Entry]
Name=RPiPlay
GenericName=AirPlay server
Comment= open-source implementation of an AirPlay mirroring server
Exec=$HOME/.local/share/start-rpiplay.sh
Icon=$HOME/.local/share/rpiplay.png
Terminal=true
StartupNotify=true
Type=Application
Categories=Utility;" > ~/.local/share/applications/rpiplay.desktop
