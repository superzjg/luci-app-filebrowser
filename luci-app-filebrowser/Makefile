
include $(TOPDIR)/rules.mk

PKG_VERSION:=20251221
PKG_RELEASE:=1
PKG_NAME:=luci-app-filebrowser

LUCI_TITLE:=LuCI support for FileBrowser
LUCI_PKGARCH:=all
LUCI_DEPENDS:=+libc

define Package/$(PKG_NAME)/conffiles
/etc/config/filebrowser
endef

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
