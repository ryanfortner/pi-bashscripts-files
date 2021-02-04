#!/bin/bash

##########################################################
# script by Itai-Nelken - https://github.com/Itai-Nelken #
# etcher compiled and packaged also by Itai-Nelken       #
##########################################################

echo "installing balenaetcher..."

#functions
function download_latest_release_armhf() {
echo "Downloading latest armhf release..."
curl -s https://api.github.com/repos/$1/releases/latest \
| grep "browser_download_url.*armv7l.deb" \
| cut -d : -f 2,3 \
| tr -d \" \
| wget -qi -
}

function download_latest_release_arm64() {
echo "Downloading latest arm64 release..."
curl -s https://api.github.com/repos/$1/releases/latest \
| grep "browser_download_url.*armv64.deb" \
| cut -d : -f 2,3 \
| tr -d \" \
| wget -qi -
}

#install dependencies
if ! which curl > /dev/null; then
   sudo apt install -y curl
else
    echo "curl already installed..."
fi

#determine if host system is 64 bit arm64 or 32 bit armhf
if [ ! -z "$(file "$(readlink -f "/sbin/init")" | grep 64)" ];then
  #install 64bit version
  echo "installing arm64 version..."
  download_latest_release_arm64 Itai-Nelken/Etcher-arm-32-64
  sudo apt -f -y install ./balena-etcher-electron*.deb
  rm balena-etcher-electron*.deb
elif [ ! -z "$(file "$(readlink -f "/sbin/init")" | grep 32)" ];then
  #install 32bit version
  echo "installing armhf version..."
  download_latest_release_armhf Itai-Nelken/Etcher-arm-32-64
  sudo apt -f -y install ./balena-etcher-electron*.deb
  rm balena-etcher-electron*.deb
else
  echo -e "$(tput setaf 1)$(tput bold)Can't detect OS architecture! something is very wrong!$(tput sgr 0)"
  exit
fi
echo "DONE!"
