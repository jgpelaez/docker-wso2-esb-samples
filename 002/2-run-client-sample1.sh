#!/bin/sh
. ./sample-vars.sh
. ../utils/set-env.sh

export CLIENT_ARGUMENTS="-Daddurl=http://$AXIS_SERVER_NAME:9000/services/SimpleStockQuoteService \
   -Dtrpurl=http://$WSO_ESB_SAMPLES_SERVER_NAME:8280/ \
   -Dsymbol=IBM"
   
. ../utils/run-client.sh

export CLIENT_ARGUMENTS="-Daddurl=http://$AXIS_SERVER_NAME:9000/services/SimpleStockQuoteService \
   -Dtrpurl=http://$WSO_ESB_SAMPLES_SERVER_NAME:8280/ \
   -Dsymbol=MSFT"
   
. ../utils/run-client.sh

export CLIENT_ARGUMENTS="-Daddurl=http://$AXIS_SERVER_NAME:9000/services/SimpleStockQuoteService \
   -Dtrpurl=http://$WSO_ESB_SAMPLES_SERVER_NAME:8280/ \
   -Dsymbol=ISUN"
   
. ../utils/run-client.sh