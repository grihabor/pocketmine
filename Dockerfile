FROM library/alpine:3.6
MAINTAINER Borodin Gregory <grihabor@mail.ru>

WORKDIR /pocketmine

RUN echo "ipv6" >> /etc/modules

# RUN apk update \
#   && apk add ca-certificates wget \
#   && update-ca-certificates

RUN apk add openssl

RUN wget -O installer.sh https://raw.githubusercontent.com/PocketMine/php-build-scripts/master/installer.sh \
    && bash installer.sh

CMD ["bash", "start.sh"]
