FROM strimzi/kafka-connect:0.11.4-kafka-2.1.0
USER root:root
COPY ./plugins/ /opt/kafka/plugins/
USER 1001
