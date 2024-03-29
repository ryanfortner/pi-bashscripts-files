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

### GNOME Software Center
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

Install add/remove software (not pi-package)
```
sudo apt install gnome-packagekit
```

### Snap Store
Snap Store is a software center based on GNOME Software Center, but it's used for installing [snaps](https://snapcraft.io/).

Project Home Page: https://snapcraft.io/snap-store

To install: 
```
# install snapd
sudo apt-get update && sudo apt-get install snapd -y

# install snapstore
sudo snap install snap-store
```

It's also available through Pi-Apps.

### Synaptic
Synaptic is a package manager GUI for power-users. It is included with the Raspberry Pi repositories and comes with many distributions.

To install: 
```
# update apt lists
sudo apt-get update

# install synaptic package
sudo apt-get install synaptic -y
```
Synaptic can be launched from the Main Menu, in the System Preferences part.
