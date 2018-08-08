#!/bin/bash
set -e

cd `dirname $0`

export IMAGE_NAME=[DOCKER_ACCOUNT]/[APPNAME]
export DATETIME=$(date +%s)

#build image
docker image build --pull \
		--cache-from ${IMAGE_NAME}:latest \
		--tag ${IMAGE_NAME}:latest .

#tag image with datetime
docker image tag ${IMAGE_NAME}:latest ${IMAGE_NAME}:${DATETIME}

#push image
docker image push ${IMAGE_NAME}:${DATETIME}
docker image push ${IMAGE_NAME}:latest
