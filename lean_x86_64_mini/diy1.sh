#!/bin/bash

# 方案一：clone kenzok8，然后删掉其passwall, 加上新版的passwall
# the following for lean's openwrt master only
sed -i 's/#src-git helloworld/src-git helloworld/g' ./feeds.conf.default

cd package

git clone https://github.com/kenzok8/openwrt-packages kenzok8
rm -rf kenzok8/luci-app-passwall
git clone https://github.com/xiaorouji/openwrt-passwall kenzok8/luci-app-passwall
cd ..
# the following for lean with luci-app-bypass
find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-redir/shadowsocksr-libev-alt/g' {}
find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-server/shadowsocksr-libev-server/g' {}


