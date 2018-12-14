#!/bin/bash
set -ev

DOCKER_USERNAME=$1
DOCKER_PASSWORD=$2

docker login -u="$DOCKER_USERNAME" -p="$DOCKER_PASSWORD"

docker-compose push 