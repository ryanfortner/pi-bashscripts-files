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
