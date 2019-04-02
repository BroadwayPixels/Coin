FROM debian:stretch
LABEL maintainer="Broadway Developers <dev@broadway.org>"
LABEL description="Dockerised BroadwayCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
