# Conky Manager 
Conky Manager is a graphical front-end for managing Conky config files. It provides options to start/stop, browse and edit Conky themes installed on the system.

### Installation
```
wget https://github.com/chunky-milk/pi-bashscripts-files/raw/main/conky-manager/realpath_8.25-2ubuntu3_16.04_all.deb
wget https://github.com/chunky-milk/pi-bashscripts-files/raw/main/conky-manager/conky-manager_2.4_136_ubuntu16.04.1_armhf.deb
sudo dpkg -i realpath_8.25-2ubuntu3_16.04_all.deb && sudo dpkg -i conky-manager_2.4_136_ubuntu16.04.1_armhf.deb
rm conky-manager_2.4_136_ubuntu16.04.1_armhf.deb && rm realpath_8.25-2ubuntu3_16.04_all.deb
```

### Uninstallation
```sudo apt purge conky-manager```
