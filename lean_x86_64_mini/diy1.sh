#!/bin/bash
# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

mkdir -p package/custom
cd package/custom
# git clone --depth 1 https://github.com/coolsnowwolf/packages leanpackage && echo 'leanpackage' > leanpackage/version
git clone --depth 1 https://github.com/kenzok8/small passwallneeded && echo 'passwallneeded' > passwallneeded/version
git clone --depth 1 https://github.com/kenzok8/openwrt-packages deletedpackage && echo 'deletedpackage' > deletedpackage/version
git clone --depth 1 https://github.com/Lienol/openwrt-package lienolpackage && echo 'lienolpackage' > lienolpackage/version
#git clone --depth 1 https://github.com/fw876/helloworld helloworld && echo 'helloworld' > helloworld/version
#git clone --depth 1 https://github.com/openwrt-develop/luci-theme-atmaterial atmaterial && echo 'atmaterial' > atmaterial/version
#git clone --depth 1 https://github.com/vernesong/OpenClash OpenClash && echo 'OpenClash' > OpenClash/version
#git clone --depth 1 https://github.com/tty228/luci-app-serverchan serverchan && echo 'serverchan' > serverchan/version
#git clone --depth 1 https://github.com/rufengsuixing/luci-app-adguardhome adguardhome && echo 'adguardhome' > adguardhome/version
#git clone --depth 1 https://github.com/pymumu/luci-app-smartdns smartdns && echo 'smartdns' > smartdns/version
#git clone --depth 1 -b 18.06  https://github.com/jerrykuku/luci-theme-argon argon &&echo 'argon' > argon/version
