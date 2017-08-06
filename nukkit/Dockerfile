FROM library/maven:3.5.0-jdk-8-alpine
MAINTAINER Borodin Gregory <grihabor@mail.ru>

WORKDIR /pocketmine

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh

RUN git clone --recursive https://github.com/Nukkit/Nukkit
WORKDIR /pocketmine/Nukkit

RUN git submodule update --init
RUN mvn clean
RUN mvn package
# COPY server.properties .
# COPY pocketmine.yml .

CMD /bin/bash start.sh

