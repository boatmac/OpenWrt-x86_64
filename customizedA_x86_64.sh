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
#sed -i 's/#src-git helloworld/src-git helloworld/g' feeds.conf.default

# Add additional source
sed -i '$a src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default
sed -i '$a src-git OpenClash https://github.com/vernesong/OpenClash' feeds.conf.default
sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default
#rm -rf lede/package/lean/luci-theme-argon
#git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon/
git clone https://github.com/Hyy2001X/luci-app-adguardhome.git package/lean/luci-app-adguardhome/
#git clone https://github.com/pymumu/luci-app-smartdns.git package/lean/luci-app-smartdns/
git clone https://github.com/tty228/luci-app-serverchan.git package/lean/luci-app-serverchan/
git clone https://github.com/jerrykuku/lua-maxminddb.git package/lean/lua-maxminddb/
git clone https://github.com/jerrykuku/luci-app-vssr.git package/lean/uci-app-vssr/
