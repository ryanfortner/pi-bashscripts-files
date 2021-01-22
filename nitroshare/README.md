# NitroShare


### Installation
```
cd ~/
git clone https://github.com/nitroshare/nitroshare-desktop
sudo apt-get install build-essential cmake qtbase5-dev -y
sudo apt-get install libgtk2.0-dev libappindicator-dev libnotify-dev -y
cd nitroshare-desktop
mkdir build && cd build
cmake ..
make -j4
```

The output will be in ```~/nitroshare-desktop/build/out```.

**PLease note that if you run ```make install``` it will break the application.**
