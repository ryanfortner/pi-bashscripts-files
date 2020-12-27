Required packages

fonts-inter (3.15+ds-2_all, which can be found in this repository, needed to get fonts working)
libqt5charts5 (needed to display charts correctly, you'll need to get this from your distribution repositories)

Building from source

git clone https://github.com/oguzhaninan/Stacer
mkdir build && cd build
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH=/qt/path/bin ..
make -j $(nproc)
