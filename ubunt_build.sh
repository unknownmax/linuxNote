
echo "========(0)=========="
apt update && apt upgrade -y
apt install systemd -y

echo "========(1)=========="

cp  /etc/apt/sources.list /etc/apt/sources.list.bak
sed -i "s/ports.ubuntu.com/mirrors.ustc.edu.cn/g" /etc/apt/sources.list
apt update

echo "========(2)=========="

apt install net-tools vim usbutils module-init-tools pkg-config ifupdown sudo openssh-server -y

echo "========(3)=========="

echo auto eth0 > /etc/network/interfaces.d/eth0
echo iface eth0 inet dhcp >> /etc/network/interfaces.d/eth0
cd /
ln -s ./lib/systemd/systemd ./init

rm /etc/systemd/system/getty.target.wants/*
ln -s /lib/systemd/system/getty@.service /etc/systemd/system/getty.target.wants/dev-ttyS0.device

echo "========(4)=========="
