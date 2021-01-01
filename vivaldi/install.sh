#!/bin/bash

wget -O ~/vivaldi.deb https://vivaldi.com/download/vivaldi-stable_armhf.deb
sudo apt update
sudo apt install --fix-missing -y ~/vivaldi.deb
