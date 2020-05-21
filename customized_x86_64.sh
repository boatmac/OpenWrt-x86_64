#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#git clone https://github.com/Lienol/openwrt-package package/Lienol
#echo src-git lienol https://github.com/Lienol/openwrt-package >> feeds.conf.default
sed -i 's/#src-git helloworld/src-git helloworld/g' feeds.conf.default
./scripts/feeds clean
./scripts/feeds update -a
./scripts/feeds install -a
sed -i 's/192.168.1.1/192.168.1.254/g' package/base-files/files/bin/config_generate
