FROM library/php:7.1.8-alpine
MAINTAINER Borodin Gregory <grihabor@mail.ru>

WORKDIR /pocketmine

RUN apk update \
 && apk upgrade \
 && apk add --no-cache bash git openssh \
 && apk update \
 && apk add ca-certificates wget \
 && update-ca-certificates

RUN git clone --recursive https://github.com/ClearSkyTeam/Pocketmine-MP
RUN apk add --no-cache make autoconf automake libtool bison g++

# ENV DO_LOOP yes

WORKDIR /pocketmine/Pocketmine-MP

#RUN wget -O installer.sh https://raw.githubusercontent.com/pmmp/pocketmine-mp/master/installer.sh
COPY installer.sh .
RUN bash start.sh

COPY server.properties .
COPY pocketmine.yml .

CMD bash start.sh

