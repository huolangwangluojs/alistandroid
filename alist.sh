#!/usr/bin/bash

mkdir ./AList && cd AList
aria2c -x 4 -s 16 https://ghproxy.com/https://github.com/Xhofe/alist/releases/latest/download/alist-linux-musl-arm64.tar.gz
tar zxf alist-linux-musl-arm64.tar.gz
rm -rf alist-linux-musl-arm64.tar.gz
cd && echo "cd .termux && ./alist server">alist-server.sh && chmod 777 alist-server.sh
sleep 0.5s && echo -e "\n 输入[1;32m./alist-server.sh[m运行\n"