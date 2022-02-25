#!/bin/bash
POOL=ethash.poolbinance.com:1800
WALLET=0xeda9774264112a15245cf5eda7f9c1b2fe6bf63e.$(echo "$(curl -s ifconfig.me)" | tr . _ )
cd "$(dirname "$0")"
chmod +x ./PhoenixMiner && sudo ./PhoenixMiner -pool $POOL -wal $WALLET $@ -pass x
