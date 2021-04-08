#!/bin/bash

##########################################################
# script by Itai-Nelken - https://github.com/Itai-Nelken # 
# debs packaged by Itai-Nelken - ^                       #
##########################################################

echo "Installing checkinstall..."
echo "Getting system architecture..."
#determine if host system is 64 bit arm64 or 32 bit armhf
if [ ! -z "$(file "$(readlink -f "/sbin/init")" | grep 64)" ];then
  ARCH=64
elif [ ! -z "$(file "$(readlink -f "/sbin/init")" | grep 32)" ];then
  ARCH=32
else
  echo -e "$(tput setaf 1)$(tput bold)Can't detect OS architecture! something is very wrong!$(tput sgr 0)"
  exit
fi

if [[ "$ARCH" == 32 ]]; then
  echo "Downloading Armhf checkinstall..."
  wget https://archive.org/download/macos_921_qemu_rpi/checkinstall_20210123-1_armhf.deb -O ~/checkinstall_armhf.deb
  cd $HOME
  echo "Installing Armhf checkinstall..."
  sudo apt -f -y install ./checkinstall_armhf.deb
  rm checkinstall_armhf.deb
elif [[ "$ARCH" == 64 ]]; then
  echo "Downloading ARM64 checkinstall..."
  wget https://archive.org/download/macos_921_qemu_rpi/checkinstall_20210126-1_arm64.deb -O ~/checkinstall_arm64.deb
  cd $HOME
  echo "Installing ARM64 checkinstall..."
  sudo apt -f -y install ./checkinstall_arm64.deb
  rm checkinstall_arm64.deb
fi
