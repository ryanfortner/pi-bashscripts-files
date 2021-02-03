# Raspberry Pi Imager
Raspberry Pi Imaging Utility

### How to Compile on the Raspberry Pi
```
# Install dependencies
sudo apt update
sudo apt install --no-install-recommends build-essential devscripts debhelper cmake git libarchive-dev libcurl4-openssl-dev qtbase5-dev qtbase5-dev-tools qtdeclarative5-dev libqt5svg5-dev qttools5-dev qt5-default libssl-dev qml-module-qtquick2 qml-module-qtquick-controls2 qml-module-qtquick-layouts qml-module-qtquick-templates2 qml-module-qtquick-window2 qml-module-qtgraphicaleffects -y

# Create build dir
mkdir imager-compile && cd imager-compile

# Clone repository
git clone --depth 1 https://github.com/raspberrypi/rpi-imager
cd rpi-imager

# Build rpi-imager
debuild -uc -us

# Install rpi-imager
cd ..
sudo apt install ./rpi-imager*.deb
```

### How to install WITHOUT compiling:
```
sudo apt-get update
sudo apt-get install rpi-imager -y
```
