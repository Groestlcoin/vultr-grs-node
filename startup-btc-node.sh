#!/bin/sh

# drop into a vultr.com Debian 9 VPS to install a Bitcoin full node 

wget https://bitcoin.org/bin/bitcoin-core-0.18.1/bitcoin-0.18.1-x86_64-linux-gnu.tar.gz #09-Aug-2019 10:05
tar xzf bitcoin-0.18.1-x86_64-linux-gnu.tar.gz
install -m 0755 -o root -g root -t /usr/local/bin bitcoin-0.18.1/bin/*
bitcoind -daemon
# Bitcoin server starting = successful install
