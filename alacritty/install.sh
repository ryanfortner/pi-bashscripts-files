#!/bin/bash

wget -O ~/alacritty.zip https://github.com/chunky-milk/pi-bashscripts-files/raw/main/alacritty/alacritty-0.6.0-arm32.zip
cd ~/
unzip alacritty.zip

echo "[Desktop Entry]
Name=Alacritty
Exec=$HOME/alacritty/alacritty
Path=$HOME/
Icon=$HOME/alacritty/icon.png
Type=Application
Comment=Alacritty is the fastest terminal emulator in existence. Using the GPU for rendering enables optimizations that simply aren't possible without it.
Categories=ConsoleOnly;Utility;System;" > ~/.local/share/applications/alacritty.desktop
