#!/bin/bash

export DOCKER_TLS_VERIFY="1"
export DOCKER_HOST="tcp://34.207.216.185:2376"
export DOCKER_CERT_PATH="${PWD}/credentials/dev_env"

# /usr/bin/docker-compose -f docker-compose-non-dev.yml kill
# /usr/bin/docker-compose -f docker-compose-non-dev.yml down -v
# /usr/bin/docker-compose -f docker-compose-non-dev.yml pull
# /usr/bin/docker-compose -f docker-compose-non-dev.yml up -d

docker-compose -f docker-compose-non-dev.yml kill
docker-compose -f docker-compose-non-dev.yml down
docker-compose -f docker-compose-non-dev.yml pull
docker-compose -f docker-compose-non-dev.yml up -d