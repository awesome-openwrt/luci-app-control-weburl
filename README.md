# luci-app-weburl

> 网址过滤

效果预览：

![Snipaste_2019-09-15_00-35-18.png](https://raw.githubusercontent.com/stuarthua/PicGo/master/oh-my-openwrt/Snipaste_2019-09-15_00-35-18.png)

移植自 KoolShare Fork 仓库 [lienol/luci-app-control-weburl](https://github.com/Lienol/openwrt-package/blob/master/lienol/luci-app-control-weburl)

依赖说明：

* 用于数据包内容检查的 iptables 扩展，支持匹配字符串 - [官方 - iptables-mod-filter](https://openwrt.org/packages/pkgdata/iptables-mod-filter)
* 用于数据包内容检查的 Netfilter (IPv4) 内核模块，支持匹配字符串 - [官方 - kmod-ipt-filter](https://openwrt.org/packages/pkgdata/kmod-ipt-filter)

修改说明：

* 修改 LuCI 菜单目录

更多描述，详见: [移植软件包 - 网址过滤](https://stuarthua.github.io/oh-my-openwrt/mybook/packages/use-package-weburl.html)