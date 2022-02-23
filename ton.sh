#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=https://server1.whalestonpool.com
WALLET=EQDyp3LZApaGnsTYfNrECjrBpdUAYS_vMeQXrFjTEIKP_uyc

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolMiner --algo TON --pool $POOL --user $WALLET $@
while [ $? -eq 42 ]; do
    sleep 10s
    chmod 777 * && ./lolMiner --algo TON --pool $POOL --user $WALLET $@
done
