# Vultr Bitcoin Node
Startup script for installing a full, historic Bitcoin node on a Vultr.com VPS. Automate your contribution to the Bitcoin network!

## Quick Start

1. Check current full BTC blockcahin size at https://www.blockchain.com/charts/blocks-size
2. Spin up an Ubuntu 16.0 VPS at https://vultr.com
3. Ensure the disk story on the Ubuntu VPS accomodates the current blocksize
4. Drop in the startup script
5. Restart the VPS
6. Let startup script complete
7. Test your nodes public availability at https://bitnodes.earn.com

## TODO
1. Automatically fetch the last y cordinate from https://api.blockchain.info/charts/blocks-size?format=json
and convert if from MB to GB (to match vultr's vps deploy interface)
