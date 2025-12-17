#  定义包的基本信息（必须）
PKG_NAME:=luci-i18n-filebrowser-zh-cn
PKG_VERSION:=20210205
PKG_RELEASE:=1

# 关键：第一行必须先引入 luci.mk，它会处理版本继承等逻辑
include $(TOPDIR)/feeds/luci/luci.mk

# 包名和标题
LUCI_TITLE:=FileBrowser - 简体中文翻译
# 关键：声明依赖，确保在主包之后安装，并建立版本关联
LUCI_DEPENDS:=+luci-app-filebrowser

# 关键：最后引入语言包专用构建规则
include $(TOPDIR)/feeds/luci/luci-lang.mk
