# Linux add-on cursor themes (RPiOS)
https://github.com/chunky-milk/cursor-themes


### Installation (Whole System)
```bash
git clone https://github.com/ryanfortner/cursor-themes.git
sudo apt-get install xcursor-themes
cd cursor-themes
sudo cp -r * /usr/share/icons
```

### Installation (Per user)
```bash
mkdir ~/.icons
sudo apt-get install xcursor-themes
git clone https://github.com/ryanfortner/cursor-themes.git
cd cursor-themes
cp -r * ~/.icons
```
