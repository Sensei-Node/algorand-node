#!/bin/bash
export ALGORAND_DATA=/node/data
./goal node start -d $ALGORAND_DATA
CATCHUP=$(curl https://algorand-catchpoints.s3.us-east-2.amazonaws.com/channel/mainnet/latest.catchpoint)
./goal node catchup $CATCHUP
./goal node status -w 1000
