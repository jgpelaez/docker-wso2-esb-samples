#!/bin/sh
. ../utils/set-env.sh

docker rm -f wso2-esb-samples-axis-server
docker rm -f wso2-esb-samples-as
docker run -d --name wso2-esb-samples-as -v $WSO2_ESB_PATH \
 jgpelaez/wso2-esb /bin/bash

mkdir -p target
axis_server_pid=$(< ./target/wso2-esb-samples-axis-server.pid)
docker stop $axis_server_pid
rm -f ./target/wso2-esb-samples-axis-server.pid

docker run \
  -d  \
  --cidfile=./target/wso2-esb-samples-axis-server.pid \
  --volumes-from wso2-esb-samples-as \
  -p 9000:9000 \
  --name wso2-esb-samples-axis-server \
  webratio/ant sh $WSO2_ESB_SAMPLES_PATH/axis2Server/axis2server.sh -name wso2-esb-samples-axis-server
  
axis_server_pid=$(< ./target/wso2-esb-samples-axis-server.pid)
echo "container id". $axis_server_pid
docker exec $axis_server_pid ant -f $WSO2_ESB_SAMPLES_PATH/axis2Server/src/SimpleStockQuoteService/build.xml