FROM library/php:7.1.8-alpine
MAINTAINER Borodin Gregory <grihabor@mail.ru>

WORKDIR /pocketmine

RUN apk update \
 && apk upgrade \
 && apk add --no-cache bash git openssh make autoconf automake libtool bison g++ \
 && apk update \
 && apk add ca-certificates wget \
 && update-ca-certificates

RUN git clone --recursive https://github.com/pmmp/pocketmine-mp.git pocketmine-mp.git

# ENV DO_LOOP yes

WORKDIR /pocketmine/pocketmine-mp.git

#RUN wget -O installer.sh https://raw.githubusercontent.com/pmmp/pocketmine-mp/master/installer.sh
COPY PocketMine-MP.phar .
RUN wget -O php.tar.gz "https://akamai.bintray.com/94/94f8ffbe332cea9d283e98eaca192522da2a935be252c6c5e82f276c38e9c671?__gda__=exp=1502045939~hmac=c4d848d425331aa4e91e0c80361c450aee7ce50e810718c8fbe6564542e4decc&response-content-disposition=attachment%3Bfilename%3D%22PHP_7.0.6_x86-64_Linux.tar.gz%22&response-content-type=application%2Fgzip&requestInfo=U2FsdGVkX19cs9XeDQp5dBK9SDqiVa-nWotTWInzd__eSKpTRBOECUV2HxaJoVeEt__6TH3LtTfkNHzd25d7xBlvmYnQVvaCwx7jrmP6thGzRuZSl3VEwX5GdaZzjRVmylnMiNh5ueTsf7VU71a-Qk_kC65JRd4tgbuAFpg_HmiHSLG0HTbfLHmU9gsPDD3GS36ahXBQjaGaGvPXA4yKZg"
# https://akamai.bintray.com/94/94f8ffbe332cea9d283e98eaca192522da2a935be252c6c5e82f276c38e9c671?__gda__=exp=1502045939~hmac=c4d848d425331aa4e91e0c80361c450aee7ce50e810718c8fbe6564542e4decc&response-content-disposition=attachment%3Bfilename%3D%22PHP_7.0.6_x86-64_Linux.tar.gz%22&response-content-type=application%2Fgzip&requestInfo=U2FsdGVkX19cs9XeDQp5dBK9SDqiVa-nWotTWInzd__eSKpTRBOECUV2HxaJoVeEt__6TH3LtTfkNHzd25d7xBlvmYnQVvaCwx7jrmP6thGzRuZSl3VEwX5GdaZzjRVmylnMiNh5ueTsf7VU71a-Qk_kC65JRd4tgbuAFpg_HmiHSLG0HTbfLHmU9gsPDD3GS36ahXBQjaGaGvPXA4yKZg
# RUN ls
RUN tar -xzvf php.tar.gz
RUN ln bin/php7/bin/php php
RUN stat bin/php7/bin/php
RUN bash start.sh

COPY server.properties .
COPY pocketmine.yml .

CMD bash start.sh

