#!/bin/bash

# the following for lean's openwrt master only
# sed -i 's/#src-git helloworld/src-git helloworld/g' ./feeds.conf.default

cd package
git clone https://github.com/xiaorouji/openwrt-passwall passwall 
mkdir -p kenzok8
cd kenzok8
for f in AdGuardHome lua-maxminddb luci-app-adguardhome luci-app-advancedsetting luci-app-aliddns luci-app-eqos luci-app-jd-dailybonus luci-theme-ifit microsocks naiveproxy redsocks2 tcping
	do 
		svn export --quiet https://github.com/kenzok8/openwrt-packages/trunk/${f}
done
cd ..
mkdir -p lienolpkg
cd lienolpkg
svn export --quiet https://github.com/Lienol/openwrt-package/trunk/luci-app-control-timewol
svn export --quiet https://github.com/Lienol/openwrt-package/trunk/luci-app-control-webrestriction
svn export --quiet https://github.com/Lienol/openwrt-package/trunk/luci-app-control-weburl
svn export --quiet https://github.com/Lienol/openwrt-package/trunk/luci-app-timecontrol
cd ../..
