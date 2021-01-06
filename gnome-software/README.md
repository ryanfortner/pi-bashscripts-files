# Pi gnome-software Software Center
featured in Novaspirit Tech's video [here](https://www.youtube.com/watch?v=a_q87I4EpLM&feature=youtu.be)
## **WARNING!** This will UNINSTALL pi-package (or add/remove software) from the system. Do not use this guide if you don't want pi-package removed.

### Install gnome-software-common packages
```
sudo apt-get update
sudo apt-get install gnome-software -y
```

### Install snapd, flatpak
```
sudo apt-get install flatpak snapd -y
sudo reboot
```

### Install flatpak repo
```
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

### Install gnome-software plugins
```
sudo apt-get install gnome-software-plugin-flatpak gnome-software-plugin-snap -y
```
