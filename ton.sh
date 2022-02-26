#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=stratum+tcp://beamv3.usa-west.nicehash.com:3387
WALLET=3CTg2iwSkq8H45zg8FhQnYUFp7FiEmpJ5W

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolMiner --algo BEAM-III --pool $POOL --user $WALLET $@
while [ $? -eq 42 ]; do
    sleep 10s
    ./lolMiner --algo BEAM-III --pool $POOL --user $WALLET $@
done
