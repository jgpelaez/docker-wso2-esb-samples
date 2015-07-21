#!/bin/sh
. ../utils/set-env.sh

docker run \
  --volumes-from wso2-esb-samples \
  --link wso2-esb-samples-axis-server:wso2-esb-samples-axis-server \
  --link wso2-esb-samples:wso2-esb-samples \
  webratio/ant ant stockquote -f $WSO2_ESB_SAMPLES_ClIENT_BUILD \
   -Daddurl=http://wso2-esb-samples-axis-server:9000/services/SimpleStockQuoteService \
   -Dtrpurl=http://wso2-esb-samples:8280/