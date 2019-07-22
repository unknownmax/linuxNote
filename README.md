# linux 编译移植

64bit系统支持32bit
- apt-get  install lib32z1  lib32stdc++6

make menuconfig 依赖

- sudo apt install libncurses5-dev

vim设置
- /etc/vim/vimrc.tiny

vim 方向键 ABCD
- set nocompatible

Backspace 不能即时删除
- set backspace=2


Debian gnome 设置
- GNOME Tweak Tool
- Dash to panel

shadowsocks设置
- apt install python3-pip
- sudo pip3 install genpac

- https://github.com/shadowsocks/shadowsocks-qt5/releases

- wget https://raw.githubusercontent.com/gfwlist/gfwlist/master/gfwlist.txt
- genpac --pac-proxy "SOCKS5 127.0.0.1:1080" --gfwlist-proxy="SOCKS5 127.0.0.1:1080" --gfwlist-url=https://raw.githubusercontent.com/gfwlist/gfwlist/master/gfwlist.txt --output="autoproxy.pac" --gfwlist-local ./gfwlist.txt

- 网络设置 -> 网络代理 -> 方式：自动 -> 配置url -> autoproxy.pac 路径

ubuntu base
- 需要安装systemd
- udev 不装，uart终端会到不了login

驱动编译需要先编译内核
内核依赖:
- sudo apt install bc libssl-dev flex bison

- make prepare && make scripts

驱动需要修改KDIR 指向linux内核的根目录


asix 驱动

- 官网下载最新的驱动, 复制 && 覆盖 .c .h 文件
- qihua-x63-debian8/linux-3.10/drivers/net/usb
- Makefile 去掉没有的编译项目

