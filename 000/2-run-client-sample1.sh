#!/bin/sh
. ../utils/set-env.sh

export CLIENT_ARGUMENTS="-Daddurl=http://$AXIS_SERVER_NAME:9000/services/SimpleStockQuoteService \
   -Dtrpurl=http://$WSO_ESB_SAMPLES_SERVER_NAME:8280/"
   
. ../utils/run-client.sh