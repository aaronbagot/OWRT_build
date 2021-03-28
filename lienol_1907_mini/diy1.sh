#!/bin/bash
# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# svn export 只下载文件，不含巨大的.svn，所以将来也无法commit. 否则用svn checkout ------
# svn 如果不是/tree/master/ （换成/trunk/），则用/branches/19.07/

mkdir -p package/custom
cd  package/custom
git clone https://github.com/xiaorouji/openwrt-passwall passwall
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus luci-app-jd-dailybonus
## add 2 lines
git clone https://github.com/jerrykuku/lua-maxminddb.git
git clone https://github.com/jerrykuku/luci-app-vssr.git
mkdir -p kenzok8
cd kenzok8
svn export --quiet https://github.com/kenzok8/openwrt-packages/trunk/luci-app-advancedsetting
svn export --quiet https://github.com/kenzok8/openwrt-packages/trunk/luci-app-aliddns
svn export --quiet https://github.com/kenzok8/openwrt-packages/trunk/luci-app-eqos
svn export --quiet https://github.com/kenzok8/openwrt-packages/trunk/luci-theme-ifit
# add 1 line
# svn export --quiet https://github.com/kenzok8/openwrt-packages/trunk/luci-theme-argon_new
cd ..
mkdir -p leanpkg
cd leanpkg
svn export --quiet https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-rclone
svn export --quiet https://github.com/coolsnowwolf/lede/trunk/package/lean/rclone-ng
svn export --quiet https://github.com/coolsnowwolf/lede/trunk/package/lean/rclone-webui-react
svn export --quiet https://github.com/coolsnowwolf/lede/trunk/package/lean/rclone
svn export --quiet https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-ttyd
svn export --quiet https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-uugamebooster
svn export --quiet https://github.com/coolsnowwolf/lede/trunk/package/lean/uugamebooster
svn export --quiet https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-ramfree
cd ../../..

# https://drive.google.com/drive/folders/121BsXplFUUT0mmT3SJjkZp8QdCEZ-YP-  编译好的包


