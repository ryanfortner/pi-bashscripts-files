# FreeCAD 0.18.4
a free and opensource multiplatform 3D parametric modeler. Issues are managed on our own bug tracker at https://www.freecadweb.org/tracker

Guide for the RPi4:
https://scruss.com/blog/2020/02/16/freecad-on-raspberry-pi-4/

### Installation
```
sudo apt install cmake build-essential libtool lsb-release swig libboost-dev libboost-date-time-dev libboost-filesystem-dev libboost-graph-dev libboost-iostreams-dev libboost-program-options-dev libboost-python-dev libboost-regex-dev libboost-serialization-dev libboost-signals-dev libboost-thread-dev libcoin-dev libeigen3-dev libgts-bin libgts-dev libkdtree++-dev libmedc-dev libopencv-dev libproj-dev libvtk6-dev libx11-dev libxerces-c-dev libzipios++-dev qt4-dev-tools libqt4-dev libqt4-opengl-dev libqtwebkit-dev libshiboken-dev libpyside-dev pyside-tools python-dev python-matplotlib python-pivy python-ply python-pyside libocct*-dev occt-draw libsimage-dev doxygen libcoin-doc dh-exec libspnav-dev -y
wget https://github.com/FreeCAD/FreeCAD/archive/0.18.5.zip
unzip 0.18.5.zip
rm 0.18.5.zip
mkdir freecad-build && cd freecad-build
cmake -DPYTHON_EXECUTABLE=/usr/bin/python2.7 -DPYTHON_INCLUDE_DIR=/usr/include/python2.7 -DPYTHON_LIBRARY=/usr/lib/arm-linux-gnueabihf/libpython2.7.so  -DPYTHON_PACKAGES_PATH=/usr/local/lib/python2.7/dist-packages/  ../FreeCAD-0.18.5/
make -j4
```
