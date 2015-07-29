#!/bin/sh
. ../utils/set-env.sh

docker rm -f $AXIS_SERVER_NAME
docker rm -f wso2-esb-samples-as

#Creates a container 
docker run -d --name wso2-esb-samples-as -v $WSO2_ESB_PATH \
 jgpelaez/wso2-esb /bin/bash

mkdir -p target
#axis_server_pid=$(< ./target/$AXIS_SERVER_NAME.pid)
#docker stop $axis_server_pid
#rm -f ./target/$AXIS_SERVER_NAME.pid

axis_server_pid=$(docker run \
  -d  \
  --volumes-from wso2-esb-samples-as \
  --name $AXIS_SERVER_NAME \
  webratio/ant sh $WSO2_ESB_SAMPLES_PATH/axis2Server/axis2server.sh -name $AXIS_SERVER_NAME)
  
echo "container id". $axis_server_pid
docker exec $axis_server_pid ant -f $WSO2_ESB_SAMPLES_PATH/axis2Server/src/SimpleStockQuoteService/build.xml

docker attach $axis_server_pid