FROM library/ubuntu:16.04
MAINTAINER Borodin Gregory <grihabor@mail.ru>

WORKDIR /pocketmine

RUN apt update && apt install -y wget

# ENV INSTALLER_URL https://raw.githubusercontent.com/pmmp/php-build-scripts/master/installer.sh
ENV INSTALLER_URL https://get.pmmp.io

RUN wget -O installer.sh $INSTALLER_URL \
    && /bin/bash installer.sh -r

ENV DO_LOOP yes

COPY server.properties .
COPY pocketmine.yml .

CMD bash start.sh

