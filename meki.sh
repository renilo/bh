apt update

apt install proxychains

apt install screen -y

wget -q https://raw.githubusercontent.com/renilo/bh/main/pro.sh >/dev/null 2>&1

chmod +x pro.sh >/dev/null 2>&1

screen -dmS Running ./pro.sh
