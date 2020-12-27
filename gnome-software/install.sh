#!/bin/bash

# Install gnome-software-common packages
sudo apt-get update
sudo apt-get install gnome-software -y

# Install snapd, flatpak
sudo apt-get install flatpak snapd -y

# Install flatpak repo
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Install gnome-software plugins
sudo apt-get install gnome-software-plugin-flatpak gnome-software-plugin-snap -y

echo ""
echo "You will need to REBOOT."
echo ""
