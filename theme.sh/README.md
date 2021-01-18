# theme.sh
One theme script to rule them all.

### Features

 - 270+ preloaded themes.
 - Works on any terminal with OSC 4/11 support (e.g kitty, osx term)
 - Small, self contained and POSIX compliant.
 - Interactive theme selection (requires [fzf](https://github.com/junegunn/fzf))

### Installation
```
sudo apt install fzf -y
git clone https://github.com/lemnos/theme.sh
cd theme.sh
chmod +x theme.sh && sudo cp theme.sh /usr/bin/
cd .. && rm -rf theme.sh

# Run theme.sh
theme.sh
```

You can also add ```theme.sh <theme-name>``` to the bottom of ```~/.bashrc``` for the theme to start up every time you open a terminal.

### Uninstallation
```sudo rm /usr/bin/theme.sh```

### Please view Novaspirit Tech's excellent walkthrough video [here](https://www.youtube.com/watch?v=6A__Ptqaca0). 
