# Copyright (C) 2018-2020 Lienol <lawlienol@gmail.com>
#
# This is free software, licensed under the Apache License, Version 2.0 .
#
# Improve by xiaozhuai <xiaozhuai7@gmail.com>
#

include $(TOPDIR)/rules.mk

PKG_VERSION:=20250703
PKG_RELEASE:=1
PKG_NAME:=luci-app-filebrowser

LUCI_TITLE:=LuCI support for FileBrowser
LUCI_PKGARCH:=all
LUCI_DEPENDS:=+libc

define Package/$(PKG_NAME)/conffiles
/etc/config/filebrowser
endef

include $(TOPDIR)/feeds/luci/luci.mk

LUCI_TITLE:=FileBrowser - 简体中文翻译
LUCI_DEPENDS:=+luci-app-filebrowser

# 引入语言包构建机制
include $(TOPDIR)/feeds/luci/luci-lang.mk

# call BuildPackage - OpenWrt buildroot signature
