FROM quay.io/strimzi/kafka:0.25.0-kafka-2.8.0
USER root:root
RUN mkdir -p /opt/kafka/plugins/debezium
COPY ./debezium-connector-postgres/ /opt/kafka/plugins/debezium/
USER 1001
