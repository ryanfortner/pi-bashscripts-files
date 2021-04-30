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
