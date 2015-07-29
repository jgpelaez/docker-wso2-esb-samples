#!/bin/sh
. ../utils/set-env.sh

echo Running wso2 client sample with arguments: $CLIENT_ARGUMENTS

docker run \
  --volumes-from wso2-esb-samples \
  --link wso2-esb-samples-axis-server:wso2-esb-samples-axis-server \
  --link wso2-esb-samples:wso2-esb-samples \
  webratio/ant ant stockquote -f $WSO2_ESB_SAMPLES_ClIENT_BUILD \
   $CLIENT_ARGUMENTS