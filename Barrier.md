```bash
sudo apt install git cmake make xorg-dev g++ libcurl4-openssl-dev \
libavahi-compat-libdnssd-dev libssl-dev libx11-dev qtbase5-dev -y

##Build Barrier From Source
cd /tmp
rm -rf barrier
git clone --recursive https://github.com/debauchee/barrier.git
cd barrier
mkdir build
cd build
cmake ..
make -j$(nproc)
sudo make install
cd /tmp
rm -rf barrier
```
