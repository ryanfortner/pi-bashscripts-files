# KeePassX
KeePassX is an opensource password safe software.

Project home page: https://www.keepassx.org/

# Compilation/Installation
To compile it, enter these commands:
```
git clone https://github.com/keepassx/keepassx
sudo apt-get install build-essential cmake qtbase5-dev libqt5x11extras5-dev qttools5-dev qttools5-dev-tools libgcrypt20-dev zlib1g-dev libxi-dev libxtst-dev -y
cd keepassx
mkdir build
cd build
cmake ..
make -j4
sudo make install
```
