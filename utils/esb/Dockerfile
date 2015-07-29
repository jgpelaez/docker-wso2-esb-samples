FROM jgpelaez/wso2-esb:latest

ENV AXIS_SERVER_NAME=wso2-esb-samples-axis-server
ENV WSO2_ESB_PATH=/opt/wso2esb-4.8.1

RUN mv $WSO2_ESB_PATH/repository/samples/synapse_sample_650.xml $WSO2_ESB_PATH/repository/samples/tmp_synapse_sample_650.xml && \
  sed -i.bak s/localhost/$AXIS_SERVER_NAME/g $WSO2_ESB_PATH/repository/samples/synapse_sample_*.xml  && \ 
  mv $WSO2_ESB_PATH/repository/samples/tmp_synapse_sample_650.xml $WSO2_ESB_PATH/repository/samples/synapse_sample_650.xml