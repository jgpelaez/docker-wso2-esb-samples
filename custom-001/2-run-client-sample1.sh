#!/bin/sh
. ../utils/set-env.sh

export CLIENT_ARGUMENTS="-Dtrpurl=http://$WSO_ESB_SAMPLES_SERVER_NAME:8280/services/StockQuote"
   
. ../utils/run-client.sh