#!/bin/bash
# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# uci / u

mkdir -p package/custom
cd package/custom

git clone https://github.com/kenzok8/small kenzok8small
git clone https://github.com/kenzok8/openwrt-packages kenzok8
git clone -b dev-19.07 https://github.com/Lienol/openwrt-packages lienolpackages
git clone https://github.com/Lienol/openwrt-package lienolpackage

