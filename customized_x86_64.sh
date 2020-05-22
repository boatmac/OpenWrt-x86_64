#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Enable feature
sed -i 's/#src-git helloworld/src-git helloworld/g' feeds.conf.default

# Add additional source
sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# Modify default IP
sed -i 's/192.168.1.1/192.168.1.254/g' package/base-files/files/bin/config_generate
