#!/bin/sh
. ../utils/set-env.sh

docker rm -f wso2-esb-samples

docker run  \
	-p 9443:9443 -p 8280:8280 \
	-v $WSO2_ESB_PATH \
	--link wso2-esb-samples-axis-server:wso2-esb-samples-axis-server \
	--name wso2-esb-samples \
	jgpelaez/wso2-esb $WSO2_ESB_PATH/bin/wso2esb-samples.sh -sn 0