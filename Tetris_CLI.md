# [Tetris CLI](https://github.com/k-vernooy/tetris)

<img src=https://github.com/k-vernooy/tetris/raw/master/docs/out.gif width=500px>

ascii/cli rendition of tetris.

### Installation
```
cd ~/
sudo apt-get install libncursesw5-dev build-essential -y
git clone https://github.com/k-vernooy/tetris && cd tetris
make && sudo make install
```
Then simply run `tetris` in a terminal.

### Uninstallation
```
sudo rm /usr/local/bin/tetris 
rm -rf ~/tetris
```
