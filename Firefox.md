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

