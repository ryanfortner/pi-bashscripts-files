# Linux addon cursor themes (RPiOS)

### Installation (Whole system)
```bash
git clone https://github.com/chunky-milk/cursor-themes.git
sudo apt-get install xcursor-themes
cd cursor-themes
sudo cp -r * /usr/share/icons
```

### Installation (Per user)
```bash
mkdir ~/.icons
git clone https://github.com/chunky-milk/cursor-themes.git
cd cursor-themes
cp -r * ~/.icons
