#!/bin/bash

# Install Java
sudo apt-get update
sudo apt-get install openjdk-11-jdk -y

mkdir ~/ATLauncher
cd ~/ATLauncher

wget -O ATLauncher.jar https://atlauncher.com/download/jar

