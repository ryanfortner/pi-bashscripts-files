#!/bin/bash

function error {
  echo -e "\\e[91m$1\\e[39m"
  exit 1
}

mkdir AIW
cd ~/AIW || error "Failed to enter directory!"
wget -O aiw.sh 'https://bit.ly/3rBZH0r' || error "Failed to download!"
wget -O icon.png 'https://github.com/chunky-milk/pi-bashscripts-files/raw/main/All%20is%20Well/icon-64.png' || error "Failed to download icon!"
chmod +x 'aiwrpi.sh'
echo "[Desktop Entry]
Name=All Is Well
GenericName=Update Helper and Fixer
Comment= A bash script that allows users to easily update and upgrade their repositories and packages on Linux. It will also fix any broken packages and dependencies.
Exec=$HOME/AIW/aiw.sh
Icon=$HOME/AIW/icon.png
Terminal=true
StartupNotify=true
Type=Application
Categories=Utility;" > ~/.local/share/applications/aiw.desktop || error "Failed to create menu button!"
