# pi-bashscripts-files
A collection of Bash scripts and files useful for the Raspberry Pi 4 and other models.

Please note that all of these scripts were tested on a Raspberry Pi 4 running Raspberry Pi OS (32 bit) off of a 16 GB SanDisk MicroSD card and/or a 500 GB Samsung T7 SSD.

Using any other operating system may result in unexpected installation failures or may break your system, so if not using RPiOS 32bit, **be prepared for failures.**

## installation files and such
I have organized everything into folders. Some folders may have install scripts, some may have packages, or links, or something else. Only use this repository if you know what you're doing.


## To add to [pi-apps](https://github.com/Botspot/pi-apps/):

These are the scripts i'm working on adding to botspot's Pi apps project. If you would like to help me with them, awesome! just message me: @chunkymilk0309#3309 on discord.

Alacritty https://github.com/chunky-milk/pi-bashscripts-files/tree/main/alacritty

Bleachbit https://github.com/chunky-milk/pi-bashscripts-files/tree/main/bleachbit

conky manager https://github.com/chunky-milk/pi-bashscripts-files/tree/main/conky-manager

dolphin emu https://github.com/chunky-milk/pi-bashscripts-files/tree/main/dolphin-emu

dosbox x https://github.com/chunky-milk/pi-bashscripts-files/tree/main/dosbox-x

Duckstation https://github.com/chunky-milk/pi-bashscripts-files/tree/main/duckstation

freetube https://github.com/chunky-milk/pi-bashscripts-files/tree/main/freetube

googleearth https://github.com/chunky-milk/pi-bashscripts-files/tree/main/google-earth

lutris game manager https://github.com/chunky-milk/pi-bashscripts-files/tree/main/lutris

megasync https://github.com/chunky-milk/pi-bashscripts-files/tree/main/megasync

obs studio https://github.com/chunky-milk/pi-bashscripts-files/tree/main/obs-studio

openscad https://github.com/chunky-milk/pi-bashscripts-files/tree/main/openscad

panther launcher https://github.com/chunky-milk/pi-bashscripts-files/tree/main/panther_launcher

photogimp https://github.com/chunky-milk/pi-bashscripts-files/tree/main/photogimp (in progress)

ppsspp https://github.com/chunky-milk/pi-bashscripts-files/tree/main/ppsspp

remmina https://github.com/chunky-milk/pi-bashscripts-files/tree/main/remmina

stacer https://github.com/chunky-milk/pi-bashscripts-files/tree/main/stacer-rpi

teamviewer https://github.com/chunky-milk/pi-bashscripts-files/tree/main/teamviewer

vscodium https://github.com/chunky-milk/pi-bashscripts-files/tree/main/vscodium

## other useless stuff

### Headless Raspberry Pi setup
```
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1
country=US

network={
 ssid="wifiuname"
 psk="wifipass"
}
```
create blank file called ```ssh``` with no filename extension in the ```boot``` partition.
