#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/192.168.10.2/g' openwrt/package/base-files/files/bin/config_generate

#2. Clear the login password
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' openwrt/package/lean/default-settings/files/zzz-default-settings

#3. Replace with JerryKuKu’s Argon
#rm openwrt/package/lean/luci-theme-argon -rf

#4. 修改主机名
sed -i '/uci commit system/i\uci set system.@system[0].hostname='Hong OpenWrt'' openwrt/package/lean/default-settings/files/zzz-default-settings

#5. 版本号显示名字
sed -i "s/Openwrt /HongnahZ Build $(TZ=UTC-8 date "+%Y.%m.%d") @ Openwrt /g" openwrt/package/lean/default-settings/files/zzz-default-settings
