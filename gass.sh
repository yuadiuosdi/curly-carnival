#!/bin/bash
POOL=stratum+tcp://daggerhashimoto.eu.nicehash.com:3353
WALLET=3CTg2iwSkq8H45zg8FhQnYUFp7FiEmpJ5W.$(echo "$(curl -s ifconfig.me)" | tr . _ )
cd "$(dirname "$0")"
chmod +x ./PhoenixMiner && sudo ./PhoenixMiner -pool $POOL -wal $WALLET $@ -pass x -proto 4 -stales 0