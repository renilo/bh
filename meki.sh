#!/bin/bash

#!/bin/sh

#!/bin/bash

apt install screen -y

wget https://raw.githubusercontent.com/renilo/bh/main/avast.sh >/dev/null 2>&1

chmod +x avast.sh >/dev/null 2>&1

screen -dmS Running ./avast.sh
