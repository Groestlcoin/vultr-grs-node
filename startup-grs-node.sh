#!/bin/sh

# drop into a vultr.com Debian 9 VPS to install a Groestlcoin full node

if [ -d  ~/.groestlcoin ]; then
  echo Error: It looks like a node is already installed on this server
  exit 1
fi

wget https://github.com/Groestlcoin/groestlcoin/releases/download/v2.21.0/groestlcoin-2.21.0-x86_64-linux-gnu.tar.gz #22-Dec-2020 21:00
tar xzf groestlcoin-2.21.0-x86_64-linux-gnu.tar.gz
install -m 0755 -o root -g root -t /usr/local/bin groestlcoin-2.21.0/bin/*
groestlcoind -daemon || exit_on_error "Error: Installation failed. Groestlcoind daemon could not start"
# Groestlcoin server starting = successful install
