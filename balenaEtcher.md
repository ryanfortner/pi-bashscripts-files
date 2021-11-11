# BalenaEtcher
Flash OS images to removable drives (SD cards, USB sticks, SSDs, etc.)

Project home page: https://github.com/balena-io/etcher

### Installation
Recommended: use my apt repo:
```
sudo wget https://ryanfortner.github.io/balenaetcher-debs/etcher.list -O /etc/apt/sources.list.d/etcher.list
wget -qO- https://ryanfortner.github.io/balenaetcher-debs/KEY.gpg | sudo apt-key add -
sudo apt update && sudo apt install balena-etcher-electron -y
```
Alternatively, download and install the latest deb file from [here](https://github.com/Itai-Nelken/Etcher-arm-32-64/releases/latest), and install it with
```
sudo apt -yf install ./deb-file.deb
```

### Uninstallation
```
sudo apt purge balena-etcher-electron -y
```

<details>
<summary> Compiling Etcher from source </summary>
**CAUTION: Don't do this if you don't have any experience with compiling things on Linux...**

## Compiling and Packaging for armv7 / arm64 / aarch64 - Ubuntu / Debian

After trying many different build combinations, including writing my own packaging script, I have found the following to be the most reliable and consistent method of building Etcher. This method has been tested on a fresh install of Raspbian Buster on a Raspberry Pi 4.
Also tested on arm64 / aarch64 Ubuntu 16.04 / 19.10

**Build Instructions**
1. Install build dependencies.  
```
sudo apt-get install -y git python gcc g++ ruby-dev make libx11-dev libxkbfile-dev fakeroot rpm libsecret-1-dev jq python2.7-dev python-pip python-setuptools libudev-dev
sudo gem install fpm -v 1.10.2 --no-document #note: must be v1.10.2 NOT v1.11.0
#Install nvm manager:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash || error "Failed to install nvm!"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#patch nvm script to forcibly use armhf
sed -i 's/^  nvm_echo "${NVM_ARCH}"/  NVM_ARCH=armv7l ; nvm_echo "${NVM_ARCH}"/g' "$NVM_DIR/nvm.sh"
#Install NodeJS:
nvm install --lts
```

2. Clone Repo and Checkout Release . 
```
git clone --recursive https://github.com/balena-io/etcher
cd etcher
git checkout v1.5.122
```

3. Install Requirements  
```
pip install -r requirements.txt
```

4. If using the Raspberry Pi 4, this step is required:
```
# 2gb ram model:
export NODE_OPTIONS="--max-old-space-size=1024"
# 4gb ram model (or higher):
export NODE_OPTIONS="--max-old-space-size=3072"
```
  
5. Setup and Install NPM Modules
```
make electron-develop
``` 
At this point you should be able to run a test of Etcher with -
```
npm start
```

6. Patch Build Files 
```
# disable tiffutil in the Makefile as this is a Mac only app and will cause the build to fail
sed -i 's/tiffutil/#tiffutil/g' Makefile 
# restrict output to .deb package only to save build time
sed -i 's/TARGETS="deb rpm appimage"/TARGETS="deb"/g' scripts/resin/electron/build.sh
```

7. Build and Package 
```
# use USE_SYSTEM_FPM="true" to force the use of the installed FPM version
USE_SYSTEM_FPM="true" make electron-build 
```

8. Install Package 
```
#  *.deb package will be in /etcher/dist/*
# filename will depend on which release version was checked out
sudo apt-get install ./dist/balena-etcher-electron_1.5.118+a1558116_armv7l.deb 
```
Note: You can ignore the `chmod: cannot access '/opt/balenaEtcher/chrome-sandbox': No such file or directory` warning. It is caused by the `postinst` file and is only relevant for electron versions 5+.

</details>
