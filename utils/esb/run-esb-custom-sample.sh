#!/bin/sh
. ../utils/set-env.sh

docker rm -f wso2-esb-samples

docker build -t jgpelaez/wso2-esb-samples ../utils/esb/

docker run  \
	-p 9443:9443 -p 8280:8280 \
	-v $WSO2_ESB_PATH \
	-v $(pwd)/synapse_sample_$SAMPLE_NUMBER.xml:$WSO2_ESB_PATH/repository/samples/synapse_sample_$SAMPLE_NUMBER.xml \
	--link wso2-esb-samples-axis-server:wso2-esb-samples-axis-server \
	--name wso2-esb-samples \
	jgpelaez/wso2-esb-samples $WSO2_ESB_PATH/bin/wso2esb-samples.sh -sn $SAMPLE_NUMBER
	

#$WSO2_ESB_PATH/bin/wso2server.sh -sn $SAMPLE_NUMBER	