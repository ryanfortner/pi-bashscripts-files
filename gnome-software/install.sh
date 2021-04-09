#!/bin/bash

echo "Installing gnome-software-common packages"
sudo apt-get update
sudo apt-get install gnome-software -y

echo "Installing snapd, flatpak"
sudo apt-get install flatpak snapd -y

echo "Installing flatpak repo"
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo "Installing gnome-software plugins"
sudo apt-get install gnome-software-plugin-flatpak gnome-software-plugin-snap -y
sleep 3
clear
echo ""
echo "You will need to REBOOT."
echo ""

