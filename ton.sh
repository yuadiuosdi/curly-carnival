#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=https://server1.whalestonpool.com
WALLET=EQBYmpKhF-wjIoI30VR2b_MeX-fE3BQCtZrWC9Pnzfof4Igo

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolMiner --algo TON --pool $POOL --user $WALLET $@
while [ $? -eq 42 ]; do
    sleep 10s
    ./lolMiner --algo TON --pool $POOL --user $WALLET $@
done
