# FreeCAD for Raspberry Pi

FreeCAD is a free and open-source parametric modeler. 

The original FreeCAD in the Raspberry Pi Foundation repositories is outdated, and it also doesn't work. But, using these instructions, you won't encounter either of these issues.

## Installing
My FreeCAD debs can be installed via [Raspbian Addons](https://raspbian-addons.org), [Pi-Apps](https://github.com/Botspot/pi-apps), or just the latest deb file [here](https://github.com/ryanfortner/freecad-rpi/releases/latest), but if you'd like to compile on your own, see the below instructions.

### Compiling and Packaging for 32-bit RPiOS
Here's how to compile FreeCAD on Raspberry Pi OS arm hardfloat. Be sure to switch the versions when needed, I might forget to update this page in the future.

```
# Install dependencies
sudo apt install cmake cmake-gui libboost-date-time-dev libboost-dev libboost-filesystem-dev libboost-graph-dev libboost-iostreams-dev libboost-program-options-dev libboost-python-dev libboost-regex-dev libboost-serialization-dev libboost-thread-dev libcoin-dev libeigen3-dev libgts-bin libgts-dev libkdtree++-dev libmedc-dev libocct-data-exchange-dev libocct-ocaf-dev libocct-visualization-dev libopencv-dev libproj-dev libpyside2-dev libqt5opengl5-dev libqt5svg5-dev libqt5webkit5-dev libqt5x11extras5-dev libqt5xmlpatterns5-dev libshiboken2-dev libspnav-dev libvtk7-dev libx11-dev libxerces-c-dev libzipios++-dev occt-draw pyside2-tools python3-dev python3-matplotlib python3-pivy python3-ply python3-pyside2.qtcore python3-pyside2.qtgui python3-pyside2.qtsvg python3-pyside2.qtwidgets python3-pyside2.qtnetwork python3-markdown python3-git qtbase5-dev qttools5-dev swig -y

# python3-pyside2uic workaround
sudo apt-get install pyqt5-dev
sudo apt-get install pyqt5-dev-tools
cd /usr/bin/
sudo ln -s pyrcc5 pyside2-rcc
sudo ln -s pyuic5 pyside2-uic

# Install checkinstall (needed to build a deb)
sudo apt-get install gettext -y
git clone https://github.com/giuliomoro/checkinstall
cd checkinstall
sudo make install
cd .. && rm -rf checkinstall

# Download source code
wget https://github.com/FreeCAD/FreeCAD/archive/refs/tags/0.19.3.tar.gz
tar -xvf 0.19.3.tar.gz
rm 0.19.3.tar.gz

# Compile source code
mkdir freecad-build && cd freecad-build
cmake ../FreeCAD-0.19.3 -DBUILD_QT5=ON -DPYTHON_EXECUTABLE=/usr/bin/python3.9 -DPYTHON_INCLUDE_DIR=/usr/include/python3.9 -DPYTHON_LIBRARY=/usr/lib/arm-linux-gnueabihf/libpython3.9.so  -DPYTHON_PACKAGES_PATH=/usr/local/lib/python3.9/dist-packages/ -DUSE_PYBIND11=ON
make -j4

# Create .deb package with checkinstall (make sure to switch the versions)
sudo checkinstall -y -D --pkgversion="0.19.3" --provides="freecad" --requires="libboost-date-time-dev,libboost-dev,libboost-filesystem-dev,libboost-graph-dev,libboost-iostreams-dev,libboost-program-options-dev,libboost-python-dev,libboost-regex-dev,libboost-serialization-dev,libboost-thread-dev,libcoin-dev,libeigen3-dev,libgts-bin,libgts-dev,libkdtree++-dev,libmedc-dev,libocct-data-exchange-dev,libocct-ocaf-dev,libocct-visualization-dev,libopencv-dev,libproj-dev,libpyside2-dev,libqt5opengl5-dev,libqt5svg5-dev,libqt5webkit5-dev,libqt5x11extras5-dev,libqt5xmlpatterns5-dev,libshiboken2-dev,libspnav-dev,libvtk7-dev,libx11-dev,libxerces-c-dev,libzipios++-dev,occt-draw,pyside2-tools,python3-dev,python3-matplotlib,python3-pivy,python3-ply,python3-pyside2.qtcore,python3-pyside2.qtgui,python3-pyside2.qtsvg,python3-pyside2.qtwidgets,python3-pyside2.qtnetwork,python3-markdown,python3-git,qtbase5-dev,qttools5-dev,swig" --pkgname="freecad" --install="no" make install
```

### Compiling and Packaging for 64-bit RPiOS

Here's how to compile FreeCAD on Raspberry Pi OS arm 64-bit. Be sure to switch the versions when needed, I might forget to update this page in the future.

```
# Install dependencies
sudo apt install cmake cmake-gui libboost-date-time-dev libboost-dev libboost-filesystem-dev libboost-graph-dev libboost-iostreams-dev libboost-program-options-dev libboost-python-dev libboost-regex-dev libboost-serialization-dev libboost-thread-dev libcoin-dev libeigen3-dev libgts-bin libgts-dev libkdtree++-dev libmedc-dev libocct-data-exchange-dev libocct-ocaf-dev libocct-visualization-dev libopencv-dev libproj-dev libpyside2-dev libqt5opengl5-dev libqt5svg5-dev libqt5webkit5-dev libqt5x11extras5-dev libqt5xmlpatterns5-dev libshiboken2-dev libspnav-dev libvtk7-dev libx11-dev libxerces-c-dev libzipios++-dev occt-draw pyside2-tools python3-dev python3-matplotlib python3-pivy python3-ply python3-pyside2.qtcore python3-pyside2.qtgui python3-pyside2.qtsvg python3-pyside2.qtwidgets python3-pyside2.qtnetwork python3-markdown python3-git python3-pyside2uic qtbase5-dev qttools5-dev swig -y

# Install checkinstall (needed to build a deb)
sudo apt-get install gettext -y
git clone https://github.com/giuliomoro/checkinstall
cd checkinstall
sudo make install
cd .. && rm -rf checkinstall

# Download source code
wget https://github.com/FreeCAD/FreeCAD/archive/refs/tags/0.19.3.tar.gz
tar -xvf 0.19.3.tar.gz
rm 0.19.3.tar.gz

# Compile source code
mkdir freecad-build && cd freecad-build
cmake ../FreeCAD-0.19.3 -DBUILD_QT5=ON -DPYTHON_EXECUTABLE=/usr/bin/python3.9 -DPYTHON_INCLUDE_DIR=/usr/include/python3.9 -DPYTHON_LIBRARY=/usr/lib/aarch64-linux-gnu/libpython3.9.so -DPYTHON_PACKAGES_PATH=/usr/local/lib/python3.9/dist-packages/ -DUSE_PYBIND11=ON
make -j4

# Create .deb package with CheckInstall (make sure to switch the versions)
sudo checkinstall -y -D --pkgversion="0.19.3" --provides="freecad" --requires="libboost-date-time-dev,libboost-dev,libboost-filesystem-dev,libboost-graph-dev,libboost-iostreams-dev,libboost-program-options-dev,libboost-python-dev,libboost-regex-dev,libboost-serialization-dev,libboost-thread-dev,libcoin-dev,libeigen3-dev,libgts-bin,libgts-dev,libkdtree++-dev,libmedc-dev,libocct-data-exchange-dev,libocct-ocaf-dev,libocct-visualization-dev,libopencv-dev,libproj-dev,libpyside2-dev,libqt5opengl5-dev,libqt5svg5-dev,libqt5webkit5-dev,libqt5x11extras5-dev,libqt5xmlpatterns5-dev,libshiboken2-dev,libspnav-dev,libvtk7-dev,libx11-dev,libxerces-c-dev,libzipios++-dev,occt-draw,pyside2-tools,python3-dev,python3-matplotlib,python3-pivy,python3-ply,python3-pyside2.qtcore,python3-pyside2.qtgui,python3-pyside2.qtsvg,python3-pyside2.qtwidgets,python3-pyside2.qtnetwork,python3-markdown,python3-git,qtbase5-dev,qttools5-dev,swig,python3-pyside2uic" --pkgname="freecad" --install="no" make install
```
