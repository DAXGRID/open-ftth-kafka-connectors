#!/bin/sh

curl https://repo1.maven.org/maven2/io/debezium/debezium-connector-cassandra/1.1.2.Final/debezium-connector-cassandra-1.1.2.Final-plugin.tar.gz | tar xvz

export DOCKER_ORG=openftth
docker build . -t ${DOCKER_ORG}/connect-debezium-cassandra
docker push ${DOCKER_ORG}/connect-debezium-cassandra
