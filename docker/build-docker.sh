#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-broadwaypay/broadwayd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/broadwayd docker/bin/
cp $BUILD_DIR/src/broadway-cli docker/bin/
cp $BUILD_DIR/src/broadway-tx docker/bin/
strip docker/bin/broadwayd
strip docker/bin/broadway-cli
strip docker/bin/broadway-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
