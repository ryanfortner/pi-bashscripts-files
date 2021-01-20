# [Compile aircrack-ng on Raspberry Pi](https://raspberrypihell.blogspot.com/2014/01/aircrack-ng-on-raspberry-pi.html)

### Compilation instructions
```
sudo apt-get update
sudo apt-get install libssl-dev subversion iw libnl-dev macchanger sqlite3 reaver -y
sudo apt-get install libnl-3-dev libnl-genl-3-dev -y
wget https://github.com/chunky-milk/pi-bashscripts-files/raw/main/aircrack-ng/aircrack-ng-1.2-rc4.tar.gz
sudo tar xzvf aircrack-ng-1.2-rc4.tar.gz
sudo mv aircrack-ng-1.2-rc4 aircrack-ng
cd aircrack-ng 
sudo make 
sudo make install
sudo airodump-ng-oui-update
cd scripts
sudo make install
rm aircrack-ng-1.2-rc4.tar.gz
```

### Original script (featured in the "other" menu in [piKiss](https://github.com/jmcerrejon/pikiss)).
These instructions may become outdated.
```
wget https://raw.githubusercontent.com/txt3rob/Aircrack-NG_RaspberryPI/master/install.sh
sudo chmod 777 install.sh
sudo ./install.sh
```
