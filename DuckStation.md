# DuckStation
Project homepage: https://github.com/stenzek/duckstation

### What is Duckstation?

DuckStation is an simulator/emulator of the Sony PlayStation(TM) console, focusing on playability, speed, and long-term maintainability. The goal is to be as accurate as possible while maintaining performance suitable for low-end devices. "Hack" options are discouraged, the default configuration should support all playable games with only some of the enhancements having compatibility issues.

A "BIOS" ROM image is required to to start the emulator and to play games. You can use an image from any hardware version or region, although mismatching game regions and BIOS regions may have compatibility issues. A ROM image is not provided with the emulator for legal reasons, you should dump this from your own console using Caetla or other means.

### Downloads
Download the latest file from my automatic daily-build service [here](https://github.com/chunky-milk/autobuildservice/tree/master/duckstation). Make sure you get a BIOS and set it up per instructions [here](https://www.duckstation.org/wiki/Installation).

Please note that the build files are currently only 32-bit.

Or, to compile it:
```
sudo apt-get install libsdl2-dev libgtk-3-dev cmake pkg-config qtbase5-dev qtbase5-private-dev qtbase5-dev-tools qttools5-dev git ninja-build -y
cd ~/
git clone https://github.com/stenzek/duckstation.git -b dev
cd duckstation && mkdir build-release
cd build-release && cmake -DCMAKE_BUILD_TYPE=Release ..
# If on Pi 4:
make -j4
# If on pi 3 or lower
make
```
