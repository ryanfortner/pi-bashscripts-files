# Dolphin Wii/Gamecube Emulator
 Dolphin is a GameCube / Wii emulator, allowing you to play games for these two platforms on PC with improvements. 
 
### Installation
```
sudo apt install --no-install-recommends ca-certificates qtbase5-dev g++-7 qtbase5-private-dev git cmake make gcc g++ pkg-config libavcodec-dev libavformat-dev libavutil-dev libswscale-dev libxi-dev libxrandr-dev libudev-dev libevdev-dev libsfml-dev libminiupnpc-dev libmbedtls-dev libcurl4-openssl-dev libhidapi-dev libsystemd-dev libbluetooth-dev libasound2-dev libpulse-dev libpugixml-dev clang libbz2-dev libzstd-dev liblzo2-dev libpng-dev libusb-1.0-0-dev gettext -y
git clone https://github.com/dolphin-emu/dolphin.git dolphin-emu && cd dolphin-emu
mkdir build && cd build
cmake .. -DCMAKE_C_COMPILER=gcc-7 -DCMAKE_CXX_COMPILER=g++-7 make
sudo make install
```
