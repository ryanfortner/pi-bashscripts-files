#!/bin/bash

wget https://wdl1.cache.wps.cn/wps/download/ep/Linux2019/9719/wps-office_11.1.0.9719_arm64.deb -O ~/wps-office_arm64.deb

sudo apt install --fix-missing -y ~/wps-office_arm64.deb

rm -f ~/wps-office_arm64.deb
