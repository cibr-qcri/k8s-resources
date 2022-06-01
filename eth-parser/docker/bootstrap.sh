#!/bin/bash

PROVIDER_URI="http://"${ETHEREUM_CLIENT_HOST}":"${ETHEREUM_CLIENT_PORT}
export LC_ALL=C.UTF-8
export LANG=C.UTF-8

echo "Staring ...."

ethereumetl export_blocks_and_transactions --start-block 0 --end-block 1000 --provider-uri $PROVIDER_URI --blocks-output blocks.csv --transactions-output transactions.csv

echo "Ending toshi-bitcoin parser..."
