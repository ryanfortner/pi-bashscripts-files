# stacer-rpi
Stacer is an open source system optimizer and application monitor that helps users to manage entire system with different aspects, its an all in one system utility.
This is simply just a mirror of the version compiled for 32-bit ARM (armhf). You can see the original repository here: https://oguzhaninan.github.io/Stacer-Web/, where you can also find x86 binaries.

## Installation
Stacer has been compiled already for quick and easy installation with a couple commands. Paste these into a terminal:
```
wget -O ~/stacer.deb https://bit.ly/2VOstft && wget -O ~/fonts-inter.deb https://bit.ly/3mSAmfO
sudo apt install libqt5charts5 -y
sudo dpkg -i fonts-inter.deb && sudo dpkg -i stacer.deb && rm -f ~/fonts-inter.deb && rm -f ~/stacer.deb
```
You can find Stacer in Menu > Accessories > Stacer.

## ***Known Issues***
total amount of RAM is not displayed properly.
