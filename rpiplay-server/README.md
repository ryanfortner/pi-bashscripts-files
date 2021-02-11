# RPiPlay

https://github.com/FD-/RPiPlay

An open-source implementation of an AirPlay mirroring server for the Raspberry Pi. The goal is to make it run smoothly even on a Raspberry Pi Zero.

### INSTALLATION
```
sudo apt-get update
sudo apt-get install cmake libavahi-compat-libdnssd-dev libplist-dev  libssl-dev -y

wget -O ~/rpiplay.deb https://github.com/chunky-milk/pi-bashscripts-files/raw/main/rpiplay-server/rpiplay_20210203-1_armhf.deb
sudo dpkg -i rpiplay.deb && rm rpiplay.deb

# Run RPiPlay server
rpiplay
```
