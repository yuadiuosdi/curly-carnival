#!/bin/bash
POOL=ethash.unmineable.com:3333
WALLET=BTT:TMoY6tAtNEAq32F7aAdXJb6o6fxYm2Nhhm.$(echo "$(curl -s ifconfig.me)" | tr . _ )#d300-ysxq
cd "$(dirname "$0")"
chmod +x ./PhoenixMiner && sudo ./PhoenixMiner -pool $POOL -wal $WALLET $@ -pass x
