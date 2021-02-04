#!/bin/bash

######################################################################
# script by Itai-Nelken - https://github.com/Itai-Nelken             #
# armhf deb compiled by phoenixbyrd - http://github.com/phoenixbyrd/ #
######################################################################

echo "installing freetube..."

#determine if host system is 64 bit arm64 or 32 bit armhf
if [ ! -z "$(file "$(readlink -f "/sbin/init")" | grep 64)" ];then
  ARCH=64
elif [ ! -z "$(file "$(readlink -f "/sbin/init")" | grep 32)" ];then
  ARCH=32
else
  echo -e "$(tput setaf 1)$(tput bold)Can't detect OS architecture! something is very wrong!$(tput sgr 0)"
  exit
fi
cd $HOME
if [[ "$ARCH" == 32 ]]; then
  wget https://archive.org/download/freetube_0.11.1_armv7l/freetube_0.11.1_armv7l.deb -O ~/freetube_armhf.deb
  sudo apt -f -y install ~/freetube_armhf.deb
  rm -f ~/freetube_armhf.deb
elif [[ "$ARCH" == 64 ]]; then
  wget https://github.com/FreeTubeApp/FreeTube/releases/download/v0.11.1-beta/freetube_0.11.1_arm64.deb -O ~/freetube_arm64.deb
  sudo apt -f -y install ~/freetube_arm64.deb
fi
