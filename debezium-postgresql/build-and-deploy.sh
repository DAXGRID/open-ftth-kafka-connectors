#!/bin/sh

curl https://repo1.maven.org/maven2/io/debezium/debezium-connector-postgres/1.1.2.Final/debezium-connector-postgres-1.1.2.Final-plugin.tar.gz | tar xvz

export DOCKER_ORG=openftth
docker build . -t ${DOCKER_ORG}/connect-debezium-postgresql
docker push ${DOCKER_ORG}/connect-debezium-postgresql
