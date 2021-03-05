# StuntRally - Raspberry pi compilation

```
sudo apt install git -y
sudo apt install build-essential -y
sudo apt install libboost-wave-dev -y
sudo apt install libboost-system-dev -y
sudo apt install libboost-filesystem-dev -y
sudo apt install libboost-thread-dev -y
sudo apt install libogre-1.9-dev -y
sudo apt install libmygui-dev -y
sudo apt install libsdl2-dev -y
sudo apt install libogg-dev -y
sudo apt install libvorbis-dev -y
sudo apt install libenet-dev -y
sudo apt install libopenal-dev -y
sudo apt install libbullet-dev -y
sudo apt install libbullet-extras-dev -y
git clone --depth=1 git://github.com/stuntrally/stuntrally.git stuntrally
cd stuntrally/data
git clone --depth=1 git://github.com/stuntrally/tracks.git tracks
cd ..
mkdir build
cd build
cmake ..
make -j4
sudo make install
```
