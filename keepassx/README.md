# KeePassX 
KeePassX is a cross platform port of the windows application “Keepass Password Safe”. 

### Installation (precompiled)
```
wget https://github.com/chunky-milk/pi-bashscripts-files/raw/main/keepassx/keepassx_20210203-1_armhf.deb -O keepassx.deb
sudo apt-get install build-essential cmake qtbase5-dev libqt5x11extras5-dev qttools5-dev qttools5-dev-tools libgcrypt20-dev zlib1g-dev libxi-dev libxtst-dev -y
sudo dpkg -i keepassx.deb
```

### Installation (compile)
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
