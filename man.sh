sudo apt update
sudo apt install screen -y
sudo apt update
sudo apt install libpci3
wget https://github.com/bzminer/bzminer/releases/download/v8.0.0/bzminer_v8.0.0_linux_cuda_tk.tar.gz >/dev/null 2>&1
tar xvf bzminer_v8.0.0_linux_cuda_tk.tar.gz >/dev/null 2>&1
chmod +x bzminer >/dev/null 2>&1
ip=$(echo "$(curl -s ifconfig.me)" | tr . _ ) && sudo ./bzminer -a ethash -w 0x416ae3f8ae189add6a5b3b26cab1070b4397edfb -p stratum+tcp://us1.ethermine.org:4444 stratum+tcp://us2.ethermine.org:4444 -r $ip-BZ --nvidia 1
