# FreeCAD 0.18.5
a free and opensource multiplatform 3D parametric modeler. 

FreeCAD on a Raspberry Pi has always been hit or miss, really. It just loads up and crashes. I have recompiled the latest version of FreeCAD, 0.18.5, into a .deb file for the fastest possible installation. Follow the instructions below: or you can learn how to compile it at [this link](https://scruss.com/blog/2020/02/16/freecad-on-raspberry-pi-4/)

### 32bit Installation
```
sudo apt install cmake build-essential libtool lsb-release swig libboost-dev libboost-date-time-dev libboost-filesystem-dev libboost-graph-dev libboost-iostreams-dev libboost-program-options-dev libboost-python-dev libboost-regex-dev libboost-serialization-dev libboost-signals-dev libboost-thread-dev libcoin-dev libeigen3-dev libgts-bin libgts-dev libkdtree++-dev libmedc-dev libopencv-dev libproj-dev libvtk6-dev libx11-dev libxerces-c-dev libzipios++-dev qt4-dev-tools libqt4-dev libqt4-opengl-dev libqtwebkit-dev libshiboken-dev libpyside-dev pyside-tools python-dev python-matplotlib python-pivy python-ply python-pyside libocct*-dev occt-draw libsimage-dev doxygen libcoin-doc dh-exec libspnav-dev -y
wget -O ~/freecad.deb https://archive.org/download/freecad_0.18.5-1_armhf/freecad_0.18.5-1_armhf.deb
sudo apt --fix-broken -y install ~/freecad.deb
```
