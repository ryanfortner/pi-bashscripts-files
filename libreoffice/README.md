# LibreOffice
This is how you can get LibreOffice up and running on your RPiOS installation. And, it's the latest version and will automatically update.

https://launchpad.net/~libreoffice/+archive/ubuntu/ppa

### Installation
Add this line to your apt sources.list file in ```/etc/apt/sources.list```
```
deb http://ppa.launchpad.net/libreoffice/ppa/ubuntu focal main 
```
Then, type this command to get the repository key...
```
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 83FBA1751378B444
```
And finally, reinstall LibreOffice...
```
sudo apt-get update
sudo apt-get install libreoffice -y
```
