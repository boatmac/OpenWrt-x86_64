#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#git clone https://github.com/Lienol/openwrt-package package/Lienol
echo src-git lienol https://github.com/Lienol/openwrt-package >> feeds.conf.default
./scripts/feeds clean
./scripts/feeds update -a
#rm -rf feeds/lienol/lienol/ipt2socks
#rm -rf feeds/lienol/lienol/shadowsocksr-libev
#rm -rf feeds/lienol/lienol/pdnsd-alt
#rm -rf feeds/lienol/package/verysync
#rm -rf feeds/lienol/lienol/luci-app-verysync
#rm -rf package/lean/kcptun
#rm -rf package/lean/trojan
#rm -rf package/lean/v2ray
#rm -rf package/lean/luci-app-kodexplorer
#rm -rf package/lean/luci-app-pppoe-relay
#rm -rf package/lean/luci-app-pptp-server
#rm -rf package/lean/luci-app-v2ray-server
./scripts/feeds install -a
sed -i 's/192.168.1.1/192.168.1.3/g' package/base-files/files/bin/config_generate
