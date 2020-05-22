#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================
# Enable feature
sed -i 's/#src-git helloworld/src-git helloworld/g' feeds.conf.default

# Add additional source
sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
