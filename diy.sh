#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
git clone https://github.com/Lienol/openwrt-package package/Lienol
./scripts/feeds update -a
./scripts/feeds install -a
sed -i 's/192.168.1.1/192.168.1.254/g' package/base-files/files/bin/config_generate
