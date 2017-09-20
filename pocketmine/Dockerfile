FROM library/alpine:3.6
MAINTAINER Borodin Gregory <grihabor@mail.ru>

WORKDIR /pocketmine

RUN apk update \
 && apk upgrade \
 && apk add \
        bash \
        ca-certificates \
        wget \
        make \
        autoconf \
        automake \
        bison

# ENV INSTALLER_URL https://raw.githubusercontent.com/pmmp/php-build-scripts/master/installer.sh
ENV INSTALLER_URL https://get.pmmp.io

RUN wget -O installer.sh $INSTALLER_URL \
 && /bin/bash installer.sh -r \
 && rm installer.sh

ENV DO_LOOP yes

COPY server.properties .
COPY pocketmine.yml .

CMD bash start.sh

