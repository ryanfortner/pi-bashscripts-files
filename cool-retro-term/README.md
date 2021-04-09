```
echo "Updating System and installing the required dependencies"
sleep 1
sudo apt-get update
sudo apt-get install build-essential qmlscene qt5-qmake qt5-default qtdeclarative5-dev qml-module-qtquick-controls qml-module-qtgraphicaleffects qml-module-qtquick-dialogs qml-module-qtquick-localstorage qml-module-qtquick-window2 qml-module-qt-labs-settings qml-module-qt-labs-folderlistmodel -y
echo "Downloading cool-retro-term
git clone --recursive https://github.com/Swordfish90/cool-retro-term
cd cool-retro-term
echo "Compiling"
qmake
make -j8
sudo make install
```
