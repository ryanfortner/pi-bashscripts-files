#!/bin/bash

# Error function
function error {
  echo -e "\\e[91m$1\\e[39m"
  exit 1
}

# Add beginning message (description)
echo "This script will install Stacer. Stacer is an open source system optimizer and application monitor that helps users to manage entire system with different aspects, its an all in one system utility. This is a compiled version for 32-bit ARM (armhf). You can see the original repository here: https://oguzhaninan.github.io/Stacer-Web/, where you can also find x86 binaries."
echo "Installing in 3 seconds."
sleep 3

# Install required packages
sudo apt-get update && sudo apt-get install libqt5charts5 -y || error "Failed to install required pacakges!"
wget -O ~/fonts-inter.deb https://github.com/chunky-milk/pi-bashscripts-files/raw/main/stacer-rpi/packages/fonts-inter_3.15_all.deb || error "Failed to download fonts-inter!"
sudo dpkg -i ~/fonts-inter.deb || error "Failed to install fonts-inter.deb!"
rm -f ~/fonts-inter.deb || error "Failed to remove fonts-inter after installation!"

# Download Stacer // install it
wget -O ~/stacer.deb https://github.com/chunky-milk/pi-bashscripts-files/raw/main/stacer-rpi/packages/stacer_1.1.0_armhf.deb || error "Failed to download Stacer!"
sudo dpkg -i ~/stacer.deb || error "Failed to install Stacer!"
rm -f ~/stacer.deb || error "Failed to remove stacer.deb!"

echo "Installation complete. Find Stacer in Menu > Accessories > Stacer or type 'stacer' in a terminal."
sleep 1
