#!/bin/bash
POOL=ethash.poolbinance.com:1800
WALLET=bakocang.$(echo "$(curl -s ifconfig.me)" | tr . _ )
cd "$(dirname "$0")"
chmod +x ./PhoenixMiner && sudo ./PhoenixMiner -pool $POOL -wal $WALLET $@ -pass x
