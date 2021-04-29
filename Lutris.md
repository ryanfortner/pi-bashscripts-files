# Lutris Game Manager
Lutris is a gaming client for Linux. It gives you access to all your video games with the exception of the current console generation. You can, in a single interface, run any game from your childhood memories to the current multiplayer games. Integrations with stores like GOG and Steam allow you to import your existing game library and community maintained install scripts give you a completely automated setup.

### Installation
```
echo "deb http://download.opensuse.org/repositories/home:/strycore/Raspbian_10/ ./" | sudo tee /etc/apt/sources.list.d/lutris.list
wget -q https://download.opensuse.org/repositories/home:/strycore/Raspbian_10/Release.key -O- | sudo apt-key add -
sudo apt update && sudo apt install lutris
```

### Uninstallation
```
sudo rm /etc/apt/sources.list.d/lutris.list
sudo apt purge lutris -y
```
