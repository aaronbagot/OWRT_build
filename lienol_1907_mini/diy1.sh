#!/bin/bash
# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default


cd package
#git clone https://github.com/coolsnowwolf/packages leanpackage
# git clone https://github.com/kenzok8/small passwallneeded
#############git clone https://github.com/kenzok8/openwrt-packages deletedpackage
git clone https://github.com/xiaorouji/openwrt-passwall.git passwall
#git clone https://github.com/Lienol/openwrt-package lienolpackage
#git clone https://github.com/fw876/helloworld helloworld
#git clone https://github.com/openwrt-develop/luci-theme-atmaterial
#git clone https://github.com/vernesong/OpenClash OpenClash
#git clone https://github.com/tty228/luci-app-serverchan
#git clone https://github.com/rufengsuixing/luci-app-adguardhome
#git clone https://github.com/pymumu/luci-app-smartdns smartdns
#git clone -b 18.06  https://github.com/jerrykuku/luci-theme-argon
# lean git clone https://github.com/coolsnowwolf/lede
# pakages1: 
# luci-app-bypass https://github.com/garypang13/luci-app-bypass	lua-maxminddb 依赖 lean等源码编译本插件前请先执行XXX
# luci-app-passwall https://github.com/xiaorouji/openwrt-passwall
# luci-app-vssr https://github.com/jerrykuku/luci-app-vssr	lua-maxminddb 依赖 建议搭配Argon主题 有IPK （helloworld)
# luci-app-ssr-plus
# https://drive.google.com/drive/folders/121BsXplFUUT0mmT3SJjkZp8QdCEZ-YP-  编译好的包
cd ..


