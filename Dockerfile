FROM library/ubuntu:16.04
MAINTAINER Borodin Gregory <grihabor@mail.ru>

WORKDIR /pocketmine

RUN apt update && apt install -y wget

RUN wget -O installer.sh https://get.pmmp.io \
    && /bin/bash installer.sh -r

ENV DO_LOOP yes

CMD echo "$(PM_LANG)\ny\ny\n" | bash start.sh
