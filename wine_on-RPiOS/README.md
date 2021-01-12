### Credit: Raspberry Pi Projects and More on [YouTube](https://www.youtube.com/channel/UCkv0fW0EIUTKw6pYEnTjTbQ)
https://docs.google.com/document/d/1XtbqjCTOfGtsyspwCBwishfb9LrJaeWjDng0Crwq9Eg/edit

### Download/install Box86 using [pi-apps](https://github.com/Botspot/pi-apps#pi-apps---)

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
