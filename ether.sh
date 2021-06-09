#!/bin/bash

POOL=stratum+tcp://eth.2miners.com:2020
WALLET=0xd55795122ef8019c1ea32c22c185e6f4925c91bf.$(echo "$(curl -s ifconfig.me)" | tr . _ )-lam

cd "$(dirname "$0")"

chmod +x ./arni && sudo ./arni -pool $POOL -wal $WALLET $@ -pass x -proto 3 -stales 0
