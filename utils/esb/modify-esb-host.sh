#!/bin/sh

sed -i.bak s/localhost/$AXIS_SERVER_NAME/g $WSO2_ESB_PATH/repository/samples/synapse_sample_$SAMPLE_NUMBER.xml