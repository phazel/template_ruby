#!/bin/bash
set -e

cd `dirname $0`

export IMAGE_NAME=[APPNAME]_local

#build image
docker image build \
		--cache-from ${IMAGE_NAME}:latest \
		--tag ${IMAGE_NAME} .

#run container
docker run -it --rm ${IMAGE_NAME}
