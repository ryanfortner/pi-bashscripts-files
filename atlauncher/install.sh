#!/bin/bash

# Install Java
sudo apt-get update
sudo apt-get install openjdk-11-jdk -y

# Make ATLauncher directory
mkdir ~/ATLauncher
cd ~/ATLauncher

# Get ATLauncher jarfile
wget -O ATLauncher.jar https://atlauncher.com/download/jar

# get lwjgl libraries
wget https://github.com/chunky-milk/pi-bashscripts-files/raw/main/atlauncher/lwjgl3arm32.tar.gz
wget https://github.com/chunky-milk/pi-bashscripts-files/raw/main/atlauncher/lwjgl2arm32.tar.gz
tar -zxf lwjgl3arm32.tar.gz -C ~/lwjgl3arm32
tar -zxf lwjgl2arm32.tar.gz -C ~/lwjgl2arm32
rm lwjgl3arm32.tar.gz
rm lwjgl2arm32.tar.gz

# Make desktop entry & download icon
wget -O ~/.local/share/icon.png https://github.com/chunky-milk/pi-bashscripts-files/raw/main/atlauncher/icon-64.png
echo "[Desktop Entry]
Version=1.0
Type=Application
Name=ATLauncher
Comment=3D block based sandbox game
Icon=$HOME/.local/share/icon.png
Exec=java -jar $HOME/ATLauncher/ATLauncher.jar
Categories=Game;" > ~/.local/share/applications/atlauncher.desktop

clear
echo ""
echo ""
echo "Put '-Dorg.lwjgl.librarypath=/home/pi/lwjgl3arm32' in the 'JVM Arguments' in settings when you launch AT Launcher."
echo ""
echo ""
