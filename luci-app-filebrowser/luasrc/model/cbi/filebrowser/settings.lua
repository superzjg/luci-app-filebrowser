m = Map("filebrowser", translate("FileBrowser"), translate("File explorer is software that creates your own cloud that you can install on a server, point it to a path, and then access your files through a beautiful web interface. You have many features available!"))
m:append(Template("filebrowser/status"))

s = m:section(TypedSection, "global", translate("Global Settings"))
s.anonymous = true
s.addremove = false

o = s:option(Flag, "enable", translate("Enable"), translate("<b>用户 admin 的初始密码是随机密码，首次启动时出现在日志中；</b>v2.32.1之前版本是 admin。<br>初始语言为英文 (可在Settings - Profile Settings - Language选择其他语言，点击 UPDATE 更改)"))
o.rmempty = false

o = s:option(Value, "address", translate("Listen address"))
o.default = "0.0.0.0"
o.rmempty = false

o = s:option(Value, "port", translate("Listen port"))
o.datatype = "port"
o.default = 8088
o.rmempty = false

o = s:option(Value, "database", translate("Database path"), translate("路径不要有空格；若文件不可用会自动创建（包含初始密码等配置信息）"))
o.default = "/etc/filebrowser.db"
o.rmempty = false

o = s:option(Flag, "ssl", translate("启用 SSL"), translate("开启 HTTPS"))
o.default = "0"

o = s:option(Value, "ssl_cert", translate("SSL cert"), translate("SSL证书文件路径"))
o.datatype = "file"
o:depends("ssl", "1")

o = s:option(Value, "ssl_key", translate("SSL key"), translate("SSL密钥文件路径"))
o.datatype = "file"
o:depends("ssl", "1")

o = s:option(Value, "root_path", translate("Root path"), translate("指向一个路径，可在web界面访问你的文件，默认为根目录 /"))
o.default = "/"
o.rmempty = false

o = s:option(Value, "extrFlag", translate("额外参数"), translate("要确保当前版本支持。例如：--disableExec=false 为开启命令执行功能（从v2.33.8默认禁用）"))

o = s:option(Value, "executable_directory", translate("Executable directory"), translate("The file size is large, requiring at least 32M space. It is recommended to insert a usb flash drive or hard disk, or use it in the tmp directory<br />For example, /mnt/sda1<br />For example, /tmp"))
o.default = "/tmp"
o.rmempty = false

o = s:option(Button, "_download", translate("Manually download"), translate("Make sure you have enough space. <br /><font style='color:red'>Be sure to fill out the executable storage directory the first time you run it, and then save the application. Then manually download, otherwise can not use!</font>"))
o.template = "filebrowser/download"
o.inputstyle = "apply"
o.btnclick = "downloadClick(this);"
o.id = "download_btn"

o = s:option(DummyValue, "", translate("<strong>下载/安装 注意事项：</strong>"), translate("解决办法：<br />1、跳转<a href=\'https://github.com/filebrowser/filebrowser/releases' target=\'_blank\'>到官方仓库releases页</a>用下载软件下载相应架构的压缩包，再解压把filebrowser存储到指定的目录。<br />2、若无U盘/硬盘等外置存储可用，可尝试<a href=\'https://github.com/upx/upx/releases' target=\'_blank\'>下载upx压缩可执行文件</a>节省空间</a>（但会消耗更多RAM）。"))
o.default = "上述下载按钮依赖软件包 wget-ssl ；与 GitHub 的网络连接要可靠快速，否则易报错超时"

m:append(Template("filebrowser/log"))

return m
