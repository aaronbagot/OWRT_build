#!/bin/bash
# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# uci / u

mkdir -p package/custom
cd package/custom
git clone --depth 1 https://github.com/kenzok8/small passwallneeded && echo 'passwallneeded' > passwallneeded/version
git clone --depth 1 https://github.com/kenzok8/openwrt-packages deletedpackage && echo 'deletedpackage' > deletedpackage/version
git clone --depth 1 https://github.com/Lienol/openwrt-package lienolpackage && echo 'lienolpackage' > lienolpackage/version


