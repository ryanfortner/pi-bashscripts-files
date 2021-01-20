# DuckStation
https://github.com/stenzek/duckstation#building

### Installation
```
sudo apt-get install libsdl2-dev libgtk-3-dev cmake pkg-config qtbase5-dev qtbase5-private-dev qtbase5-dev-tools qttools5-dev git ninja-build -y
git clone https://github.com/stenzek/duckstation.git -b dev
cd duckstation && mkdir build-release
cd build-release && cmake -DCMAKE_BUILD_TYPE=Release ..
# If on Pi 4:
make -j4
# If on pi 3 or lower
make
sudo make install
```
