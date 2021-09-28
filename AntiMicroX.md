Gamepad mapping program with gui.

```bash
# Dependancies
sudo apt install -y git gcc cmake extra-cmake-modules \
    qttools5-dev qttools5-dev-tools libsdl2-dev \
    libxi-dev libxtst-dev libx11-dev itstool gettext

# Cloning
cd ~
rm -rf antimicrox
git clone https://github.com/AntiMicroX/antimicrox.git --depth=1
cd antimicrox
mkdir build && cd build

# Building
cmake ..
make -j$(nproc)

# Installing
sudo make install
```
