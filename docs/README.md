# pi-bashscripts-files
Hi, welcome to my repository :)

This is where I'll put tutorials and guides to installing/doing various things on your RPi.

Most guides work/were tested on: *RPiOS 32-bits.*

I will not update this repository very often. Feel free to PR anytime.

# Alacritty
Alacritty is a terminal emulator which uses the GPU for rendering.

### Installation and Uninstallation
Add my `raspbian-addons` repository, if you haven't already...
```
https://chunky-milk.github.io/raspbian-addons/

sudo apt update # Update APT lists
sudo apt install alacritty # Install deb package
```

And, to uninstall,
```
sudo apt purge alacritty
```

# App Stores
to make using your Raspberry Pi more like a desktop PC

### PiKiss
PiKiss stands for "Pi Keeping It Simple, Stupid!" It is a bunch of scripts with a menu, to make life easier.

Works on: RPiOS 32bit, TwisterOS 32bit

Lead developer: Jose Cerrejon

Installation: 
```
curl -sSL https://git.io/JfAPE | bash
```

Project Home Page: https://github.com/jmcerrejon/pikiss

### Pi Apps
Pi-Apps is a Raspberry Pi App Store for Open Source Projects

Works on: any Debian-based distribution for the Pi, with a desktop interface and the necessary dependencies

Lead developer: Botspot

Installation:
```
wget -qO- https://raw.githubusercontent.com/Botspot/pi-apps/master/install | bash
```

Project Home Page: https://github.com/Botspot/pi-apps

### Pi gnome-software Software Center
Featured in Novaspirit Tech's video [here](https://www.youtube.com/watch?v=a_q87I4EpLM&feature=youtu.be)
**WARNING!** This will UNINSTALL pi-package (or add/remove software) from the system. Do not use this guide if you don't want pi-package removed.

Install gnome-software-common packages
```
sudo apt-get update
sudo apt-get install gnome-software -y
```

Install snapd, flatpak
```
sudo apt-get install flatpak snapd -y
sudo reboot
```

Install flatpak repo
```
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

Install gnome-software plugins
```
sudo apt-get install gnome-software-plugin-flatpak gnome-software-plugin-snap -y
```

# Box86 for Raspberry Pi
Project home page: https://ptitseb.github.io/box86/

Linux Userspace x86 emulator (with a twist) ;)

Box86 lets you run x86 Linux programs (such as games) on non-x86 Linux systems, like ARM (host system needs to be 32bit little-endian).

# Easy method- install via Pi-Apps
[![badge](https://github.com/Botspot/pi-apps/blob/master/icons/badge.png?raw=true)](https://github.com/Botspot/pi-apps)  
Thanks to @Itai-Nelken's daily Box86 builds, you can install Box86 as a deb file

### Compiling
*a build for model 2, 3 and 4 can be done. Model 1 and 0 cannot (at least not with Dynarec, as they lack NEON support)*

```
git clone https://github.com/ptitSeb/box86
cd box86
mkdir build; cd build; cmake .. -DRPI4=1 -DCMAKE_BUILD_TYPE=RelWithDebInfo
make -j4
sudo make install
sudo systemctl restart systemd-binfmt
```

For Pi4. Change to RPI2 or RPI3 for other models. Change to RPI4ARM64 for compiling on arm64. (armhf multiarch or chroot required alongside armhf gcc. Install it with ‘sudo apt install gcc-arm-linux-gnueabihf’.)

# CBonsai
Grow a bonsai tree in your terminal :)

Project home page: https://gitlab.com/jallbrit/cbonsai

### Installation
Simple installation (precompiled)
```
sudo apt-get install libncurses-dev -y
wget -O cbonsai.deb https://github.com/chunky-milk/pi-bashscripts-files/raw/main/cbonsai/cbonsai_20210310-1_armhf.deb
sudo apt --fix-broken -y install ./cbonsai.deb
rm cbonsai.deb
```

### To compile:
```
sudo apt-get install libncurses-dev apt-transport-https wget -y
git clone https://gitlab.com/jallbrit/cbonsai
cd cbonsai

# Install for this user
make install PREFIX=~/.local

# Install for all users
sudo make install
```

# CFetch
Project home page: https://github.com/clieg/cfetch.git

A simple system information tool for Linux.

### Installation
```
cd $HOME
git clone https://github.com/clieg/cfetch.git
cd ~/cfetch
make compile
sudo make install
```

### Uninstallation
```
cd ~/cfetch
sudo make uninstall
rm -rf ~/cfetch
```

# Linux add-on cursor themes (RPiOS)
https://github.com/chunky-milk/cursor-themes


### Installation (Whole System)
```bash
git clone https://github.com/chunky-milk/cursor-themes.git
sudo apt-get install xcursor-themes
cd cursor-themes
sudo cp -r * /usr/share/icons
```

### Installation (Per user)
```bash
mkdir ~/.icons
sudo apt-get install xcursor-themes
git clone https://github.com/chunky-milk/cursor-themes.git
cd cursor-themes
cp -r * ~/.icons
```

# DuckStation
Project homepage: https://github.com/stenzek/duckstation

### What is Duckstation?

DuckStation is an simulator/emulator of the Sony PlayStation(TM) console, focusing on playability, speed, and long-term maintainability. The goal is to be as accurate as possible while maintaining performance suitable for low-end devices. "Hack" options are discouraged, the default configuration should support all playable games with only some of the enhancements having compatibility issues.

A "BIOS" ROM image is required to to start the emulator and to play games. You can use an image from any hardware version or region, although mismatching game regions and BIOS regions may have compatibility issues. A ROM image is not provided with the emulator for legal reasons, you should dump this from your own console using Caetla or other means.

### Downloads
Download the latest file from my automatic daily-build service [here](https://github.com/chunky-milk/autobuildservice/tree/master/duckstation). Make sure you get a BIOS and set it up per instructions [here](https://www.duckstation.org/wiki/Installation).

Please note that the build files are currently only 32-bit.

Or, to compile it:
```
sudo apt-get install libsdl2-dev libgtk-3-dev cmake pkg-config qtbase5-dev qtbase5-private-dev qtbase5-dev-tools qttools5-dev git ninja-build -y
cd ~/
git clone https://github.com/stenzek/duckstation.git -b dev
cd duckstation && mkdir build-release
cd build-release && cmake -DCMAKE_BUILD_TYPE=Release ..
# If on Pi 4:
make -j4
# If on pi 3 or lower
make
```

# DynamicWallpaper
## ONLY works on XFCE!
## Link to Github Repo, Installation and Uninstallation Instructions
https://github.com/Jack477/DynamicWallpaper

## genuine Firefox on the Raspberry Pi 4.
**warning, may be unstable**

How to install the latest genuine Firefox build on your Raspberry Pi. It performs well and is the latest version.

### Installation
```
# Add repository source to apt sources.list
echo "deb http://ports.ubuntu.com/ubuntu-ports bionic-updates main" | sudo tee /etc/apt/sources.list.d/ubuntu.list

# Add ubuntu keyring
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 3B4FE6ACC0B21F32

# Add preferences so the ubuntu repositories don't become your "default" repositories
wget -O 99bionic-updates https://raw.githubusercontent.com/chunky-milk/pi-bashscripts-files/main/Files/99bionic-updates
sudo mv 99bionic-updates /etc/apt/preferences.d/99bionic-updates

# Finally, get the packages and update.
sudo apt update && sudo apt install firefox -y
```

### Uninstallation
```
sudo apt purge firefox -y
sudo rm /etc/apt/preferences.d/99bionic-updates
sudo rm /etc/apt/sources.list.d/ubuntu.list
sudo apt-key del 3B4FE6ACC0B21F32
```

![realfirefoxrpi.png](https://github.com/chunky-milk/pi-bashscripts-files/blob/main/Screenshots/realfirefoxrpi.png)

# FreeCAD for Raspberry Pi

[![badge](https://github.com/Botspot/pi-apps/blob/master/icons/badge.png?raw=true)](https://github.com/Botspot/pi-apps)  

## Now available in [my apt repository](https://github.com/chunky-milk/raspbian-addons).

FreeCAD is a free and open-source parametric modeler. 

The original FreeCAD in the Raspberry Pi Foundation repositories is outdated. I've created this repository so that I can share the latest .deb file that actually works with everyone.

## Installing
Installing is quite easy, just download the latest .deb file [here](https://github.com/chunky-milk/freecad-rpi/releases/latest) and install it using **apt**. Or, just get it on [pi-apps](https://github.com/Botspot/pi-apps/).

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
sudo checkinstall -y -D --pkgversion="0.19.2" --provides="freecad" --requires="cmake,build-essential,libtool,lsb-release,swig,libboost-dev,libboost-date-time-dev,libboost-filesystem-dev,libboost-graph-dev,libboost-iostreams-dev,libboost-program-options-dev,libboost-python-dev,libboost-regex-dev,libboost-serialization-dev,libboost-signals-dev,libboost-thread-dev,libcoin-dev,libeigen3-dev,libgts-bin,libgts-dev,libkdtree++-dev,libmedc-dev,libopencv-dev,libproj-dev,libvtk6-dev,libx11-dev,libxerces-c-dev,libzipios++-dev,qt4-dev-tools,libqt4-dev,libqt4-opengl-dev,libqtwebkit-dev,libshiboken-dev,libpyside-dev,pyside-tools,python-dev,python-matplotlib,python-pivy,python-ply,python-pyside,occt-draw,libsimage-dev,doxygen,libcoin-doc,dh-exec,libspnav-dev,libocct-data-exchange-dev,libocct-draw-dev,libocct-foundation-dev,libocct-modeling-algorithms-dev,libocct-modeling-data-dev,libocct-ocaf-dev,libocct-visualization-dev" --pkgname="freecad" --install="no" make install
```

# Headless RPi setup

In the `boot` partition of a newly-flashed drive of RPi OS:

### Set up network (WiFi)

This *is not necessary* for Ethernet connections

Create file wpa_supplicant.conf
```
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1
country=US

network={
 ssid="wifiusername"
 psk="wifipass"
}
```

# KeePassX
KeePassX is an opensource password safe software.

Project home page: https://www.keepassx.org/

# Compilation/Installation
To compile it, enter these commands:
```
git clone https://github.com/keepassx/keepassx
sudo apt-get install build-essential cmake qtbase5-dev libqt5x11extras5-dev qttools5-dev qttools5-dev-tools libgcrypt20-dev zlib1g-dev libxi-dev libxtst-dev -y
cd keepassx
mkdir build
cd build
cmake ..
make -j4
sudo make install
```

# Lutris Game Manager
Lutris is a gaming client for Linux. It gives you access to all your video games with the exception of the current console generation. You can, in a single interface, run any game from your childhood memories to the current multiplayer games. Integrations with stores like GOG and Steam allow you to import your existing game library and community maintained install scripts give you a completely automated setup.

### Installation
```
echo "deb http://download.opensuse.org/repositories/home:/strycore/Raspbian_10/ ./" | sudo tee /etc/apt/sources.list.d/lutris.list
wget -q https://download.opensuse.org/repositories/home:/strycore/Raspbian_10/Release.key -O- | sudo apt-key add -
sudo apt update && sudo apt install lutris
```

### Uninstallation
```
sudo rm /etc/apt/sources.list.d/lutris.list
sudo apt purge lutris -y
```

# NordVPN Linux client

### Installation
```
wget https://repo.nordvpn.com/deb/nordvpn/debian/pool/main/nordvpn-release_1.0.0_all.deb
sudo apt --fix-broken -y install ./nordvpn-release_1.0.0_all.deb
rm nordvpn-release_1.0.0_all.deb
sudo apt update && sudo apt install nordvpn -y

# Login to nordvpn
nordvpn login
```

# [Panther Launcher](https://github.com/phoenixbyrd/panther_launcher.git)

### Installation
If you would like to compile it:
```
sudo apt install libatk1.0-dev libglib2.0-dev libcairo2-dev libgtk-3-dev libpango1.0-dev libgdk-pixbuf2.0-dev libgee-0.8-dev libglib2.0-dev json-glib-tools libgnome-menu-3-dev libsoup2.4-dev libx11-dev cmake gettext pkg-config gcc make gnome-icon-theme valac-0.26 libjson-glib-dev libpanel-applet-dev libmate-panel-applet-dev
git clone https://github.com/phoenixbyrd/panther_launcher.git
cd panther_launcher
mkdir install
cd install
cmake .. -DCMAKE_INSTALL_PREFIX=/usr  
make
sudo make install
```

# Raspberry Pi Imager
Raspberry Pi Imaging Utility

### How to Compile on the Raspberry Pi
```
# Install dependencies
sudo apt update
sudo apt install --no-install-recommends build-essential devscripts debhelper cmake git libarchive-dev libcurl4-openssl-dev qtbase5-dev qtbase5-dev-tools qtdeclarative5-dev libqt5svg5-dev qttools5-dev qt5-default libssl-dev qml-module-qtquick2 qml-module-qtquick-controls2 qml-module-qtquick-layouts qml-module-qtquick-templates2 qml-module-qtquick-window2 qml-module-qtgraphicaleffects -y

# Create build dir
mkdir imager-compile && cd imager-compile

# Clone repository
git clone --depth 1 https://github.com/raspberrypi/rpi-imager
cd rpi-imager

# Build rpi-imager
debuild -uc -us

# Install rpi-imager
cd ..
sudo apt install ./rpi-imager*.deb
```

### How to install WITHOUT compiling:
```
sudo apt-get update
sudo apt-get install rpi-imager -y
```

# [Raspbian Addons](http://chunky-milk.github.io/raspbian-addons/)

An APT repository for packages/software that can't be found in the RPi repositories. Fully supports 32-bit debian-based operating systems (ARM). See below for information on 64-bit support.

Here are some examples of what this repository includes:

- BalenaEtcher
- the famous Box86!
- Conky Manager (to manage your Conky themes)
- StackEdit-nativefier
- DuckStation emulator (fast PS1 emulator)
- ClamTk
- qemu2deb
- RPiPlay (open source AirPlay mirror server)
- Simplenote-electron, a note-taking application
- Alacritty Terminal (Uses the GPU for rendering!)

## **To install or remove:**

Installation and removal instructions are [here](https://chunky-milk.github.io/raspbian-addons/).

### A Note on 64-bit support

Please Note that while there is a lot of software in this repository, **not all of it is available or compiled for 64-bit**. Some packages are, however.

### What is the goal of this project?

The Raspberry Pi is a great and capable little computer. But what frustrates me is how little effort the Raspberry Pi Foundation puts into their Debian package repositories. While some software does work, other software either is extremely outdated or just may not work at all. This repository aims to fix that, or to the best of my ability.

# Raspberry Pi Benchmarks
This is my collection of Raspberry Pi benchmarks. They have all been tested on standard Raspberry Pi OS (Raspbian) and work fine.
If you have any problems, **please** open a new [issue](https://github.com/chunky-milk/rpi-benchmarks/issues).

### Roy Longbottom's Pi Benchmarks
Information: http://www.roylongbottom.org.uk/Raspberry%20Pi%20Benchmarks.htm
```
cd ~/Downloads
wget -O Raspberry_Pi_Benchmarks.zip https://github.com/chunky-milk/rpi-benchmarks/raw/main/Linpack-Benchmarks.zip
unzip Raspberry_Pi_Benchmarks.zip && rm Raspberry_Pi_Benchmarks.zip
```

### glmark2
Compiled by [Novaspirit Tech](https://www.youtube.com/channel/UCrjKdwxaQMSV_NDywgKXVmw)

You will need to get the mesa/vulkan drivers, instructions [here](https://github.com/chunky-milk/pi-bashscripts-files/blob/main/other/mesa-vulkan-drivers-rpi4.md)
```
cd ~/
wget https://cdn.discordapp.com/attachments/720461552704159825/793351921091739688/glmark2.deb
sudo apt install --fix-missing -y ~/glmark2.deb && rm glmark2.deb
glmark2-es2
```

### vkmark
Compiled by [Novaspirit Tech](https://www.youtube.com/channel/UCrjKdwxaQMSV_NDywgKXVmw)

You will need to get the mesa/vulkan drivers, instructions [here](https://github.com/chunky-milk/pi-bashscripts-files/blob/main/other/mesa-vulkan-drivers-rpi4.md)
```
cd ~/
wget https://cdn.discordapp.com/attachments/720461552704159825/793572064287260672/vkmark.deb
sudo apt install --fix-missing -y ~/vkmark.deb && rm vkmark.deb
vkmark
```

### Phoronix Test Suite
Script by [Jeff Geerling on YouTube](https://www.youtube.com/c/JeffGeerling). 

GitHub: https://github.com/geerlingguy
```
wget -O phoronix.sh https://raw.githubusercontent.com/chunky-milk/rpi-benchmarks/main/pi-benchmark-general-phoronix.sh
sudo chmod +x phoronix.sh
sudo ./phoronix.sh
```

### Stressberry
This benchmarking tool will stress the CPU of your Pi and create a temperature graph.
[Instructions](https://github.com/chunky-milk/rpi-benchmarks/blob/main/stressberry.md)

### Disk speed benchmark
This script will measure the write/read speed of your system drive
```
wget -qO- https://raw.githubusercontent.com/chunky-milk/rpi-benchmarks/main/sdcard-bmark.sh | bash
```

### nbench
BYTEmark* Native Mode Benchmark ver. 2 (10/95)
```
wget https://github.com/chunky-milk/rpi-benchmarks/raw/main/nbench
chmod +x nbench
sudo mv nbench /usr/bin/nbench
nbench
```

### tinymembench
Information: https://github.com/ssvb/tinymembench
A simple memory benchmark program, which tries to measure the peak
bandwidth of sequential memory accesses and the latency of random memory
accesses. Bandwidth is measured by running different assembly code for
the aligned memory blocks and attempting different prefetch strategies.
```
wget https://github.com/chunky-milk/rpi-benchmarks/raw/main/tinymembench
chmod +x tinymembench
sudo mv tinymembench /usr/bin/tinymembench
tinymembench
```

### webgl samples
This application shows a couple webGL samples. I typically use the aquarium one but whichever one you use is your choice.
```
wget -qO- https://github.com/chunky-milk/rpi-benchmarks/raw/main/webgl.sh | bash
```

## Setup instructions for Raspicast (a Raspberry Pi chromecast alternative)

You will need and Android device connected to the same network as your Pi. And, you also need a running SSH server on it.

### 1.) Update and upgrade package sources
This is a very important step because it downloads and installs the latest updates for your Pi's packages.
```
sudo apt-get update && sudo apt-get upgrade
```

### 2.) Install required packages for Raspicast
Raspicast requires a couple packages. Git is the tool we will be using to download the source code, and Make is what we will be using to build it.
```
sudo apt-get install git make -y
```

### 3.) Install OMXPlayer
OMXPlayer might be preinstalled in your install of Raspbian, but we need to check just in case. This is what allows audio to be played on Raspicast.
```
sudo apt-get install omxplayer -y
```

### 4.) Install OMXIV
This can be called OpenMax Image Viewer. It is a required part of Raspicast because it is a GPU accelerated image viewer explicitly designed for the Raspberry Pi’s GPU, meaning we can display any images as fast as possible and reduce the load on the Raspberry Pi’s CPU.
```
cd ~
git clone https://github.com/chunky-milk/raspicast.git
```

### 5.) Install libjpeg8-dev and libpng12-dev
We need to install two more packages that allow the OpenMax image viewer to be compiled.
```
sudo apt-get install libjpeg8-dev libpng12-dev
```

### 6.) Compile code
Move to the OpenMax directory
```
cd ~/raspicast
```
Initialize build/make process (if this fails, try step 1 again)
```
make ilclient
make
```
Install the code
```
sudo make install
```

### 7.) Install Raspicast on your Android device
First we need to grab the Raspberry Pi's IP address (note this is a LOCAL ip adress, not a PUBLIC ip address.)
Type
```
hostname -I
```
into the terminal. Take note of the output.
Now, we need to install the Raspicast application on your Android device. Click on the Google Play link
https://play.google.com/store/apps/details?id=at.huber.raspicast&hl=en
Then, you'll be greeted with a popup asking for an IP address, username and password. Enter these details. The IP is the output generated by the last Raspberry Pi command.

## Remmina
https://remmina.org/how-to-install-remmina/#raspberry-pi
```
sudo apt-get install dirmngr
sudo apt-key adv --fetch-keys https://www.remmina.org/raspbian/remmina_raspbian.asc
sudo bash -c 'echo "deb https://www.remmina.org/raspbian/ buster main" > /etc/apt/sources.list.d/remmina_raspbian.list'
sudo apt update
sudo apt install remmina
```

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

# WebStationSYSMON
An intuitive remotely-accessible system performance monitoring and task management tool for servers and headless Raspberry Pi setups.

WebStationSYSMON is maintained by t0xic0der at [this page](https://github.com/t0xic0der/sysmon)

## Installation
Installation is long and complicated, but here I've made it as straightforward as possible. You'll first need to check if your Raspberry Pi is on the [support list](https://github.com/t0xic0der/sysmon/wiki/Installing-on-Raspberry-Pi#support). If it isn't on there, you might need to get some extra help on installing if you don't know what you're doing.

First, we need to install our required packages using *apt*. Execute these two commands:
```
sudo apt update 
sudo apt install python3 python3-pip
```
If all goes well, you should be able to execute the command `pip --version` and get a string of text that does not show any errors.

Next step is to clone the repository. This repository contains the code that makes up the software itself, and that's what we'll be working with. Execute this command to clone the repository and install required packages using *pip*.
```
cd ~/ && git clone https://github.com/t0xic0der/sysmon.git && cd sysmon
sudo pip3 install -r requirements.txt
```

Now, we need to create a service for *sysmon* so that it will run in the backround. To configure this, just create a new file using *sudo nano*...
```
sudo nano /etc/systemd/system/WebStationSYSMON.service
```
Then, paste this in (just make sure to change *pi* with your username if you changed it):
```
[Unit]
After=network.target

[Service]
ExecStart=sudo python3 /home/pi/sysmon/main.py -p 6969 -6

[Install]
WantedBy=default.target
```
and finally, ctrl+x, y, and then enter to save the file.

Now, we're going to enable the service and start it. Just paste in these three commands:
```
sudo systemctl daemon-reload
sudo systemctl enable WebStationSYSMON.service
sudo systemctl start WebStationSYSMON.service
```
SYSMON web monitor is now installed and if you open a web browser on a computer connected to the same network as the Raspberry Pi, you should be able to access it at `http://PI-IP-ADRESS:6969/primary`

## Uninstallation
These uninstallation steps will only work if you followed the steps above to install sysmon.
```
sudo systemctl stop WebStationSYSMON.service
sudo systemctl disable WebStationSYSMON.service
sudo systemctl daemon-reload
rm -rf ~/sysmon
```

# :parrot: for your terminal

![demo](http://dropit.velvetcache.org.s3.amazonaws.com/jmhobbs/NzczFOYq4g/termbox-parrot-color.gif)

## Installing

```
wget -O terminal-parrot https://github.com/chunky-milk/pi-bashscripts-files/raw/main/Files/terminal-parrot
chmod +x terminal-parrot && sudo mv terminal-parrot /usr/bin/
```

# unrar

### Installation
```
wget http://ftp.us.debian.org/debian/pool/non-free/u/unrar-nonfree/unrar_6.0.3-1_armhf.deb

#download dependences
wget http://ftp.us.debian.org/debian/pool/main/g/gcc-10/gcc-10-base_10.2.1-6_armhf.deb
wget http://ftp.us.debian.org/debian/pool/main/g/gcc-10/libgcc-s1.2.1-6_armhf.deb
wget http://ftp.us.debian.org/debian/pool/main/g/gcc-10-cross/gcc-10-cross-base_10.2.1-6cross1_all.deb
wget  http://ftp.us.debian.org/debian/pool/main/g/gcc-10-cross/libgcc-s1-armhf-cross_10.2.1-6cross1_all.deb

# Install them all, in the same order.
sudo apt install --fix-broken -y ./gcc-10-base_10.2.1-6_armhf.deb
sudo apt install --fix-broken -y ./libgcc-s1.2.1-6_armhf.deb -y
sudo apt install --fix-broken -y ./gcc-10-cross-base_10.2.1-6cross1_all.deb -y
sudo apt install --fix-broken -y ./libgcc-s1-armhf-cross_10.2.1-6cross1_all.deb -y

sudo apt install --fix-broken -y ./unrar_6.0.3-1_armhf.deb

# delete all downloaded and already installed packages.
sudo rm gcc-10-base_10.2.1-6_armhf.deb
sudo rm libgcc-s1.2.1-6_armhf.deb
sudo rm gcc-10-cross-base_10.2.1-6cross1_all.deb
sudo rm libgcc-s1-armhf-cross_10.2.1-6cross1_all.deb
sudo rm unrar*.deb
```

# VSCodium
https://vscodium.com/

Microsoft’s vscode source code is open source (MIT-licensed), but the product available for download (Visual Studio Code) is licensed under this not-FLOSS license and contains telemetry/tracking.

The VSCodium project exists so that you don’t have to download+build from source. This project includes special build scripts that clone Microsoft’s vscode repo, run the build commands, and upload the resulting binaries for you to GitHub releases. These binaries are licensed under the MIT license. Telemetry is disabled.

If you want to build from source yourself, head over to Microsoft’s vscode repo and follow their instructions. VSCodium exists to make it easier to get the latest version of MIT-licensed VSCode.

### Installation
```
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | gpg --dearmor | sudo dd of=/etc/apt/trusted.gpg.d/vscodium.gpg 
echo 'deb https://paulcarroty.gitlab.io/vscodium-deb-rpm-repo/debs/ vscodium main' | sudo tee --append /etc/apt/sources.list.d/vscodium.list 
sudo apt update && sudo apt install codium -y
```

### Uninstall
```
sudo apt purge codium
sudo rm /etc/apt/trusted.gpg.d/vscodium.gpg
sudo rm /etc/apt/sources.list.d/vscodium.list
```

# BalenaEtcher
Flash OS images to removable drives (SD cards, USB sticks, SSDs, etc.)

Project home page: https://github.com/balena-io/etcher

### Installation
```
# Download the latest release [here](https://github.com/Itai-Nelken/Etcher-arm-32-64/releases/latest)
sudo apt -yf install ./deb-file-here.deb
```

### Uninstallation
```
sudo apt purge balena-etcher-electron -y
```

<details>
<summary> Compiling Etcher from source </summary>
**CAUTION: Don't do this if you don't have any experience with compiling things on Linux...**

## Compiling and Packaging for armv7 / arm64 / aarch64 - Ubuntu / Debian

After trying many different build combinations, including writing my own packaging script, I have found the following to be the most reliable and consistent method of building Etcher. This method has been tested on a fresh install of Raspbian Buster on a Raspberry Pi 4.
Also tested on arm64 / aarch64 Ubuntu 16.04 / 19.10

**Build Instructions**
1. Install build dependencies.  
```
sudo apt-get install -y git python gcc g++ make libx11-dev libxkbfile-dev fakeroot rpm libsecret-1-dev jq python2.7-dev python-pip python-setuptools libudev-dev
sudo apt-get install ruby-dev
sudo gem install fpm -v 1.10.2 --no-document #note: must be v1.10.2 NOT v1.11.0
#Install nvm manager:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash || error "Failed to install nvm!"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#patch nvm script to forcibly use armhf
sed -i 's/^  nvm_echo "${NVM_ARCH}"/  NVM_ARCH=armv7l ; nvm_echo "${NVM_ARCH}"/g' "$NVM_DIR/nvm.sh"
#Install NodeJS:
nvm install --lts
```

2. Clone Repo and Checkout Release . 
```
git clone --recursive https://github.com/balena-io/etcher
cd etcher
git checkout v1.5.118
```

3. Install Requirements  
```
pip install -r requirements.txt
```

4. Setup and Install NPM Modules . 
```
make electron-develop
``` 
At this point you should be able to run a test of Etcher with -
```
npm start
```

5. Patch Build Files 
```
# disable tiffutil in the Makefile as this is a Mac only app and will cause the build to fail
sed -i 's/tiffutil/#tiffutil/g' Makefile 
# restrict output to .deb package only to save build time
sed -i 's/TARGETS="deb rpm appimage"/TARGETS="deb"/g' scripts/resin/electron/build.sh
```

6. Build and Package 
```
# use USE_SYSTEM_FPM="true" to force the use of the installed FPM version
USE_SYSTEM_FPM="true" make electron-build 
```

7. Install Package 
```
#  *.deb package will be in /etcher/dist/*
# filename will depend on which release version was checked out
sudo apt-get install ./dist/balena-etcher-electron_1.5.118+a1558116_armv7l.deb 
```
Note: You can ignore the `chmod: cannot access '/opt/balenaEtcher/chrome-sandbox': No such file or directory` warning. It is caused by the `postinst` file and is only relevant for electron versions 5+.

</details>

### Credit: Raspberry Pi Projects and More on [YouTube](https://www.youtube.com/channel/UCkv0fW0EIUTKw6pYEnTjTbQ)
https://docs.google.com/document/d/1XtbqjCTOfGtsyspwCBwishfb9LrJaeWjDng0Crwq9Eg/edit

### Download/install Box86

### Download Wine
```
cd ~/Downloads
wget https://dl.winehq.org/wine-builds/debian/dists/buster/main/binary-i386/wine-devel-i386_5.21~buster_i386.deb
wget https://github.com/chunky-milk/pi-bashscripts-files/raw/main/wine_on-RPiOS/wine-devel_5.21%7Ebuster_i386.deb
dpkg-deb -xv wine-devel-i386_5.21~buster_i386.deb wine-installer
dpkg-deb -xv wine-devel_5.21~buster_i386.deb wine-installer
```

### Install Wine
```
sudo mv wine-installer/opt/wine-devel ~/wine
sudo ln -s ~/wine/bin/wine /usr/local/bin/wine
sudo ln -s ~/wine/bin/winecfg /usr/local/bin/winecfg
sudo ln -s ~/wine/bin/wineserver /usr/local/bin/wineserver
```

### Boot wine (say yes to everything)
```
wine wineboot
```

### Download Winetricks
```
cd ~/Downloads
wget https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks
```

### Install winetricks
```
sudo chmod +x winetricks
sudo cp winetricks /usr/local/bin
```

### winetricks needs this installed
```
sudo apt-get install cabextract -y 
```

### Run Winetricks
```
BOX86_NOBANNER=1 winetricks dotnet20sp2
```
