#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=https://server1.whalestonpool.com
WALLET=EQDyp3LZApaGnsTYfNrECjrBpdUAYSvMeQXrFjTEIKPuyc

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolMiner --algo TON --pool $POOL --user $WALLET $@
while [ $? -eq 42 ]; do
    sleep 10s
    ./lolMiner --algo TON --pool $POOL --user $WALLET $@
done
