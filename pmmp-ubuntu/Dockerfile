FROM ubuntu:latest
MAINTAINER Boroidin Gregory <grihabor@mail.ru>

RUN apt update \
 && apt install -y \
	wget

WORKDIR /root

RUN wget https://raw.githubusercontent.com/pmmp/php-build-scripts/master/installer.sh
RUN bash -r installer.sh


CMD start.sh
