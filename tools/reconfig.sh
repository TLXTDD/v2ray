#!/bin/bash
uuid=$(cat /proc/sys/kernel/random/uuid)
cat >/etc/v2ray/233blog_v2ray_backup.conf.tmp <<-EOF
# -----------------------------------
# 警告...请不要修改或删除这个文件...谢谢
# 警告...请不要修改或删除这个文件...谢谢
# 警告...请不要修改或删除这个文件...谢谢
# -----------------------------------

# ---- 再次提醒 ----
# 大胸弟...如果你看到了这个...记得不要修改或更改这个文件

# ---- 说明 ----
# 嗯……这个文件呢，是用来备份一些设置的
# 我懒...不想用 JQ 去解析 JSON....
# 那就把 V2Ray 配置文件的一些重要参数提取出来
# 然后..在修改 V2Ray 配置的时候再重写一下就 OK 啦...
# 嗯…笨笨的方法

# ---- V2Ray 传输协议 -----
v2ray_transport=$v2ray_transport

#---- V2Ray 端口 -----
v2ray_port=$v2ray_port

#---- UUID -----
v2ray_id=$uuid

#---- alterId -----
alterId=233

#---- V2Ray 动态端口开始 -----
v2ray_dynamicPort_start=$v2ray_dynamicPort_start

#---- V2Ray 动态端口结束 -----
v2ray_dynamicPort_end=$v2ray_dynamicPort_end

#---- 域名 -----
domain=$domain

#---- caddy -----
caddy_status=$caddy_installed

#---- Shadowsocks -----
shadowsocks_status=$shadowsocks

#---- Shadowsocks 端口 -----
ssport=$ssport

#---- Shadowsocks 密码 -----
sspass=$sspass

#---- Shadowsocks 加密协议 -----
ssciphers=$ssciphers

#---- 屏蔽广告 -----
blocked_ad_status=$is_blocked_ad

#---- 网站伪装 -----
ws_path_status=$is_ws_path

#---- 伪装的路径 -----
ws_path=$ws_path

#---- 伪装的网址 -----
proxy_site=$proxy_site
		EOF
rm -rf $backup
mv -f /etc/v2ray/233blog_v2ray_backup.conf.tmp /etc/v2ray/233blog_v2ray_backup.conf
echo
echo -e " .... 哇哦.. .."
echo
echo -e " 请使用命令$yellow v2ray reload $none重新加载配置...以避免发生莫名其妙的问题"
echo
exit 1