#!/bin/bash

##########################################################
# script by Itai-Nelken - https://github.com/Itai-Nelken #
##########################################################

echo "installing Github-CLI..."

#determine if host system is 64 bit arm64 or 32 bit armhf
if [ ! -z "$(file "$(readlink -f "/sbin/init")" | grep 64)" ];then
  #install 64bit gh
  echo "installing arm64 version..."
  wget -O ~/gh-cli_arm64.deb https://github.com/cli/cli/releases/download/v1.5.0/gh_1.5.0_linux_arm64.deb
  sudo apt -f -y install ~/gh-cli_arm64.deb
  rm ~/gh-cli_arm64.deb
elif [ ! -z "$(file "$(readlink -f "/sbin/init")" | grep 32)" ];then
  #install 32bit version
  echo "installing armhf version..."
  wget -O ~/gh-cli_armhf.deb https://github.com/cli/cli/releases/download/v1.5.0/gh_1.5.0_linux_armv6.deb
  sudo apt -f -y install ~/gh-cli_armhf.deb
  rm ~/gh-cli_armhf.deb
else
  echo -e "$(tput setaf 1)$(tput bold)Can't detect OS architecture! something is very wrong!$(tput sgr 0)"
  exit
fi
clear
echo "DONE!"
