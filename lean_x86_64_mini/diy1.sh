#!/bin/bash

# the following for lean's openwrt master only
# sed -i 's/#src-git helloworld/src-git helloworld/g' ./feeds.conf.default

cd package
git clone https://github.com/kenzok8/openwrt-packages kenzok8
cd kenzok8
for f in gost luci-app-clash luci-app-dnsfilter luci-app-gost luci-app-openclash luci-app-passwall luci-app-smartdns luci-app-ssr-plus luci-app-vssr luci-theme-argon_new luci-theme-atmaterial luci-theme-edge luci-theme-opentomato luci-theme-opentomcat luci-theme-opentopd screenshot smartdns ; do rm -rf ${f} ; done
cd ..
git clone https://github.com/Lienol/openwrt-package lienolpkg
cd lienolpkg
shopt -s extglob
rm -rf !(*control*)  || true
shopt -s nullglob
cd ..
git clone https://github.com/xiaorouji/openwrt-passwall passwall 
cd ..


