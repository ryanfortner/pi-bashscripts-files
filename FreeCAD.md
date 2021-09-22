# FreeCAD for Raspberry Pi

[![badge](https://github.com/Botspot/pi-apps/blob/master/icons/badge.png?raw=true)](https://github.com/Botspot/pi-apps)  

## Now available in [my apt repository](https://github.com/ryanfortner/raspbian-addons).

FreeCAD is a free and open-source parametric modeler. 

The original FreeCAD in the Raspberry Pi Foundation repositories is outdated. I've created this repository so that I can share the latest .deb file that actually works with everyone.

## Installing
Installing is quite easy, just download the latest .deb file [here](https://github.com/ryanfortner/freecad-rpi/releases/latest) and install it using **apt**. Or, just get it on [pi-apps](https://github.com/Botspot/pi-apps/).

### Compiling and Packaging
To compile the latest FreeCAD into a .deb file for your architecture.

Switch the versions where needed.

```
# Install dependencies
sudo apt-get update && sudo apt-get install cmake build-essential libtool lsb-release swig libboost-dev libboost-date-time-dev libboost-filesystem-dev libboost-graph-dev libboost-iostreams-dev libboost-program-options-dev libboost-python-dev libboost-regex-dev libboost-serialization-dev libboost-signals-dev libboost-thread-dev libcoin-dev libeigen3-dev libgts-bin libgts-dev libkdtree++-dev libmedc-dev libopencv-dev libproj-dev libvtk6-dev libx11-dev libxerces-c-dev libzipios++-dev qt4-dev-tools libqt4-dev libqt4-opengl-dev libqtwebkit-dev libshiboken-dev libpyside-dev pyside-tools python-dev python-matplotlib python-pivy python-ply python-pyside libocct*-dev occt-draw libsimage-dev doxygen libcoin-doc dh-exec libspnav-dev checkinstall -y

# Install checkinstall
git clone https://github.com/giuliomoro/checkinstall
cd checkinstall
sudo make install
cd ..

# Download source code
wget https://github.com/FreeCAD/FreeCAD/archive/0.19.2.zip
unzip 0.19.2.zip
rm 0.19.2.zip

# Compile source code
mkdir freecad-build && cd freecad-build
cmake -DPYTHON_EXECUTABLE=/usr/bin/python2.7 -DPYTHON_INCLUDE_DIR=/usr/include/python2.7 -DPYTHON_LIBRARY=/usr/lib/arm-linux-gnueabihf/libpython2.7.so  -DPYTHON_PACKAGES_PATH=/usr/local/lib/python2.7/dist-packages/  ../FreeCAD-0.19.2/
make -j4

# Create .deb package with CheckInstall (make sure to switch the versions)
sudo checkinstall -y -D --pkgversion="0.19.2" --provides="freecad" --requires="libtool,lsb-release,swig,libboost-dev,libboost-date-time-dev,libboost-filesystem-dev,libboost-graph-dev,libboost-iostreams-dev,libboost-program-options-dev,libboost-python-dev,libboost-regex-dev,libboost-serialization-dev,libboost-signals-dev,libboost-thread-dev,libcoin-dev,libeigen3-dev,libgts-bin,libgts-dev,libkdtree++-dev,libmedc-dev,libopencv-dev,libproj-dev,libvtk6-dev,libx11-dev,libxerces-c-dev,libzipios++-dev,qt4-dev-tools,libqt4-dev,libqt4-opengl-dev,libqtwebkit-dev,libshiboken-dev,libpyside-dev,pyside-tools,python-dev,python-matplotlib,python-pivy,python-ply,python-pyside,occt-draw,libsimage-dev,doxygen,libcoin-doc,dh-exec,libspnav-dev,libocct-data-exchange-dev,libocct-draw-dev,libocct-foundation-dev,libocct-modeling-algorithms-dev,libocct-modeling-data-dev,libocct-ocaf-dev,libocct-visualization-dev" --pkgname="freecad" --install="no" make install
