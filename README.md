# pi-bashscripts-files
A collection of Bash scripts and files useful for the Raspberry Pi 4 and other models.

Please note that all of these scripts were tested on a Raspberry Pi 4 running Raspberry Pi OS (32 bit) off of a 16 GB SanDisk MicroSD card and/or a 500 GB Samsung T7 SSD, however not using these products will primarily not affect usage.

Using any other operating system may result in unexpected installation failures or may break your system, so if not using RPi-OS 32bit, **be prepared for failures.**

## Installation Files and Derivatives
Everything is organized into folders. Some folders may have install scripts, some may have packages and or links or something else. Only use this repository if you know what you're doing, otherwise you may break your installation of your OS.


## To add to [pi-apps](https://github.com/Botspot/pi-apps/):

These are the scripts I'm working on adding to Botspot's Pi apps project. If you would like to help me with them, awesome! just message me: @chunkymilk0309#3309 on Discord.

Alacritty https://github.com/chunky-milk/pi-bashscripts-files/tree/main/alacritty

Bleachbit https://github.com/chunky-milk/pi-bashscripts-files/tree/main/bleachbit

Conky Manager https://github.com/chunky-milk/pi-bashscripts-files/tree/main/conky-manager

Dolphin Emu https://github.com/chunky-milk/pi-bashscripts-files/tree/main/dolphin-emu

Dosbox x https://github.com/chunky-milk/pi-bashscripts-files/tree/main/dosbox-x

Duckstation https://github.com/chunky-milk/pi-bashscripts-files/tree/main/duckstation

Freetube https://github.com/chunky-milk/pi-bashscripts-files/tree/main/freetube

Google Earth https://github.com/chunky-milk/pi-bashscripts-files/tree/main/google-earth

Lutris game manager https://github.com/chunky-milk/pi-bashscripts-files/tree/main/lutris

Megasync https://github.com/chunky-milk/pi-bashscripts-files/tree/main/megasync

OBS Studio https://github.com/chunky-milk/pi-bashscripts-files/tree/main/obs-studio

Openscad https://github.com/chunky-milk/pi-bashscripts-files/tree/main/openscad

Panther launcher https://github.com/chunky-milk/pi-bashscripts-files/tree/main/panther_launcher

Photogimp https://github.com/chunky-milk/pi-bashscripts-files/tree/main/photogimp (in progress)

ppsspp https://github.com/chunky-milk/pi-bashscripts-files/tree/main/ppsspp

Remmina https://github.com/chunky-milk/pi-bashscripts-files/tree/main/remmina

Stacer https://github.com/chunky-milk/pi-bashscripts-files/tree/main/stacer-rpi

Teamviewer https://github.com/chunky-milk/pi-bashscripts-files/tree/main/teamviewer

VSCodium https://github.com/chunky-milk/pi-bashscripts-files/tree/main/vscodium

## Other Useful Stuff

### Headless Raspberry Pi Setup
```
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1
country=US

network={
 ssid="wifiuname"
 psk="wifipass"
}
```
Create blank file called ```ssh``` with no filename extension in the ```boot``` partition.
