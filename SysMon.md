# WebStationSYSMON
An intuitive remotely-accessible system performance monitoring and task management tool for servers and headless Raspberry Pi setups.

WebStationSYSMON is maintained by t0xic0der at [this page](https://github.com/t0xic0der/sysmon)

## Installation
Installation is long and complicated, but here I've made it as straightforward as possible. You'll first need to check if your Raspberry Pi is on the [support list](https://github.com/t0xic0der/sysmon/wiki/Installing-on-Raspberry-Pi#support). If it isn't on there, you might need to get some extra help on installing if you don't know what you're doing.

First, we need to install our required packages using *apt*. Execute these two commands:
```
sudo apt update 
sudo apt install python3 python3-pip
```
If all goes well, you should be able to execute the command `pip --version` and get a string of text that does not show any errors.

Next step is to clone the repository. This repository contains the code that makes up the software itself, and that's what we'll be working with. Execute this command to clone the repository and install required packages using *pip*.
```
cd ~/ && git clone https://github.com/t0xic0der/sysmon.git && cd sysmon
sudo pip3 install -r requirements.txt
```

Now, we need to create a service for *sysmon* so that it will run in the backround. To configure this, just create a new file using *sudo nano*...
```
sudo nano /etc/systemd/system/WebStationSYSMON.service
```
Then, paste this in (just make sure to change *pi* with your username if you changed it):
```
[Unit]
After=network.target

[Service]
ExecStart=sudo python3 /home/pi/sysmon/main.py -p 6969 -6

[Install]
WantedBy=default.target
```
and finally, ctrl+x, y, and then enter to save the file.

Now, we're going to enable the service and start it. Just paste in these three commands:
```
sudo systemctl daemon-reload
sudo systemctl enable WebStationSYSMON.service
sudo systemctl start WebStationSYSMON.service
```
SYSMON web monitor is now installed and if you open a web browser on a computer connected to the same network as the Raspberry Pi, you should be able to access it at `http://PI-IP-ADRESS:6969/primary`

## Uninstallation
These uninstallation steps will only work if you followed the steps above to install sysmon.
```
sudo systemctl stop WebStationSYSMON.service
sudo systemctl disable WebStationSYSMON.service
sudo systemctl daemon-reload
rm -rf ~/sysmon
```
