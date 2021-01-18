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
wget https://github.com/mikehooper/Minecraft/raw/main/lwjgl3arm32.tar.gz
wget https://github.com/mikehooper/Minecraft/raw/main/lwjgl2arm32.tar.gz
tar -zxf lwjgl3arm32.tar.gz -C ~/lwjgl3arm32
tar -zxf lwjgl2arm32.tar.gz -C ~/lwjgl2arm32
