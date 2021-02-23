#!/bin/bash
# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

mkdir -p package/custom
cd package/custom
#git clone https://github.com/coolsnowwolf/packages leanpackage
# git clone https://github.com/kenzok8/small passwallneeded
git clone https://github.com/kenzok8/openwrt-packages deletedpackage
#git clone https://github.com/Lienol/openwrt-package lienolpackage
#git clone https://github.com/fw876/helloworld helloworld
#git clone https://github.com/openwrt-develop/luci-theme-atmaterial
#git clone https://github.com/vernesong/OpenClash OpenClash
#git clone https://github.com/tty228/luci-app-serverchan
#git clone https://github.com/rufengsuixing/luci-app-adguardhome
#git clone https://github.com/pymumu/luci-app-smartdns smartdns
#git clone -b 18.06  https://github.com/jerrykuku/luci-theme-argon
cd ../..


