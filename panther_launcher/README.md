# [Panther Launcher](https://github.com/phoenixbyrd/panther_launcher.git)

### Installation
If you would like to compile it:
```
sudo apt install libatk1.0-dev libglib2.0-dev libcairo2-dev libgtk-3-dev libpango1.0-dev libgdk-pixbuf2.0-dev libgee-0.8-dev libglib2.0-dev json-glib-tools libgnome-menu-3-dev libsoup2.4-dev libx11-dev cmake gettext pkg-config gcc make gnome-icon-theme valac-0.26 libjson-glib-dev libpanel-applet-dev libmate-panel-applet-dev
git clone https://github.com/phoenixbyrd/panther_launcher.git
cd panther_launcher
mkdir install
cd install
cmake .. -DCMAKE_INSTALL_PREFIX=/usr  
make
sudo make install
```
Or, if you want the .deb file:
```
wget https://github.com/chunky-milk/pi-bashscripts-files/raw/main/panther_launcher/panther-launcher_armhf.deb
sudo apt --fix-broken -y ./panther-launcher_armhf.deb
rm panther-launcher_armhf.deb
```
