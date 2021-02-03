wget -O usbimager.deb https://gitlab.com/bztsrc/usbimager/-/raw/binaries/usbimager_1.0.6-armhf.deb
sudo apt --fix-broken -y install ./usbimager.deb
rm usbimager.deb
