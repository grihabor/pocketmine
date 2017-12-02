FROM library/alpine:latest
MAINTAINER Borodin Gregory <grihabor@mail.ru>

WORKDIR /pocketmine

# ENV INSTALLER_URL https://raw.githubusercontent.com/pmmp/php-build-scripts/master/installer.sh
ENV INSTALLER_URL https://get.pmmp.io
ENV DO_LOOP yes

RUN apk update \
 && apk upgrade \
 && apk add bash

RUN apk add --virtual build-deps \
        ca-certificates \
        wget \
        make \
        autoconf \
        automake \
        bison \
        g++ \
        libtool \
 && wget -O installer.sh $INSTALLER_URL \
 && /bin/bash installer.sh -r \
 && rm installer.sh \
 && apk del build-deps

