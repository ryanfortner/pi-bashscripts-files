# BalenaEtcher
Flash OS images to removable drives (SD cards, USB sticks, SSDs, etc.)

Project home page: https://github.com/balena-io/etcher

### Installation
Recommended: use my [Raspbian Addons](https://raspbian-addons.org/) repo:
```
python3 <(curl -fSsL https://scripts.raspbian-addons.org/utils/repo.py)
sudo apt install balena-etcher-electron
```
Alternatively, download and install the latest deb file from [here](https://github.com/Itai-Nelken/Etcher-arm-32-64/releases/latest), and install it with
```
sudo apt -f install ./deb-file.deb
```

### Uninstallation
```
sudo apt purge balena-etcher-electron
```

<details>
<summary> Compiling Etcher from source </summary>
**CAUTION: Don't do this if you don't have any experience with compiling software...**

## Compiling and Packaging

**Build Instructions**
1. Install build dependencies.  
```
sudo apt-get install -y git python gcc g++ ruby-dev make libx11-dev libxkbfile-dev fakeroot rpm libsecret-1-dev jq python2.7-dev python3-pip python-setuptools libudev-dev
sudo gem install fpm --no-document
# install nodesource repo (I found that 16.x works most reliably with newer etcher versions)
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs
```

2. Clone Repo and Checkout Release . 
```
git clone --recursive https://github.com/balena-io/etcher
cd etcher
git checkout v1.7.7
```

3. Install Requirements  
```
pip install -r requirements.txt
```

4. If using Debian Buster on a Raspberry Pi 4, this step may be required:
```
# 2gb ram model:
export NODE_OPTIONS="--max-old-space-size=1024"
# 4gb ram model (or higher):
export NODE_OPTIONS="--max-old-space-size=3072"
```
  
5. Setup and install NPM modules
```
make electron-develop
``` 
At this point you should be able to run a test of Etcher with `npm start`.

6. Patch Build Files
  
This step isn't necessary anymore, but feel free to run if you encounter build fails.
```
# disable tiffutil in the Makefile as this is a Mac only app and will cause the build to fail
sed -i 's/tiffutil/#tiffutil/g' Makefile 
# restrict output to .deb package only to save build time (not necessary unless you only want .deb)
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
