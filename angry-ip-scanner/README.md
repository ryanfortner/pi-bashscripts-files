# Angry IP Scanner
https://github.com/angryip/ipscan
Fast and friendly network scanner

### Features

    Scans local networks as well as Internet
    IP Range, Random or file in any format
    Exports results into many formats
    Extensible with many data fetchers
    Provides command-line interface
    Over 29 million downloads
    Free and open-source
    Works on Windows, Mac and Linux
    Installation not required

### Installation
```
cd ~/
wget https://github.com/angryip/ipscan/releases/download/3.7.3/ipscan_3.7.3_all.deb
sudo apt install openjdk-11-jdk rpm fakeroot -y
sudo apt --fix-broken -y install ~/ipscan_3.7.3_all.deb
```
you can now delete the .deb file the regullar way or using this command in terminal: `rm ~/ipscan*.deb`.

### Uninstallation
```
sudo apt purge -y ipscan
```
if you want to remove the dependencies as well run this command:
```
sudo apt purge openjdk-11-jdk rpm fakeroot -y
```


### screenshots

![angryipscannerrpi.png](https://github.com/Itai-Nelken/pi-bashscripts-files/blob/main/angry-ip-scanner/screenshots/angryipscannerrpi.png)
