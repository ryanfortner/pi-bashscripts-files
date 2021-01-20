# RPiPlay

https://github.com/FD-/RPiPlay

An open-source implementation of an AirPlay mirroring server for the Raspberry Pi. The goal is to make it run smoothly even on a Raspberry Pi Zero.

### INSTALLATION
```
git clone https://github.com/FD-/RPiPlay.git
cd RPiPlay
sudo apt-get update
sudo apt-get install cmake libavahi-compat-libdnssd-dev libplist-dev  libssl-dev -y

mkdir build
cd build
cmake ..
make
sudo make install

# Run RPiPlay server
rpiplay
```
