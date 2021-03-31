#!/bin/bash

# the following for lean's openwrt master only
# sed -i 's/#src-git helloworld/src-git helloworld/g' ./feeds.conf.default

echo "lean_R2x_small" > lean/version
mkdir -p package/custom
cd package/custom
git clone https://github.com/xiaorouji/openwrt-passwall passwall --depth 1
mkdir -p kenzok8
cd kenzok8
svn export --quiet https://github.com/kenzok8/openwrt-packages/trunk/AdGuardHome
svn export --quiet https://github.com/kenzok8/openwrt-packages/trunk/luci-app-adguardhome
svn export --quiet https://github.com/kenzok8/openwrt-packages/trunk/luci-app-advancedsetting
svn export --quiet https://github.com/kenzok8/openwrt-packages/trunk/luci-app-aliddns
svn export --quiet https://github.com/kenzok8/openwrt-packages/trunk/luci-app-eqos 
# lua-maxminddb microsocks naiveproxy redsocks2 tcping
mkdir -p ../lienolpkg
cd ../lienolpkg
svn export --quiet https://github.com/Lienol/openwrt-package/trunk/luci-app-control-timewol
svn export --quiet https://github.com/Lienol/openwrt-package/trunk/luci-app-control-webrestriction
svn export --quiet https://github.com/Lienol/openwrt-package/trunk/luci-app-control-weburl
svn export --quiet https://github.com/Lienol/openwrt-package/trunk/luci-app-timecontrol
cd ../../..
