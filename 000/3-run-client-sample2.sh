#!/bin/sh

export CLIENT_ARGUMENTS="-Daddurl=http://wso2-esb-samples-axis-server:9000/services/SimpleStockQuoteService \
   -Dtrpurl=http://wso2-esb-samples:8280/"
   
. ../utils/run-client.sh