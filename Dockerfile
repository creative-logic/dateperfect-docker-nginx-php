FROM nginx

MAINTAINER DatePerfect

RUN apt-get update && apt-get install -y \
    sudo \
    ntp \
    net-tools \
    telnet \
    git \
    curl \
    daemon \
    php \
    pkg-php-tools \
    gnupg2 \
    dh-php \
    php-pear \
    php7.0-apcu \
    php7.0-cli \
    php7.0-common \
    php7.0-curl \
    php7.0-dev \
    php7.0-fpm \
    php7.0-gd \
    php7.0-gmp \
    php7.0-imap \
    php7.0-json \
    php7.0-mcrypt \
    php7.0-memcached \
    php7.0-mysqlnd \
    php7.0-pgsql \
    php7.0-readline \
    php7.0-sqlite \
    php7.0-xdebug 
 
RUN curl --silent --location https://deb.nodesource.com/setup_7.x | sudo bash -
RUN apt-get install --yes nodejs
RUN apt-get install --yes build-essential
RUN apt-get update
RUN npm install -g bower -y
RUN npm install -g grunt
RUN npm install -g grunt-cli

ENTRYPOINT service nginx restart && bash 

EXPOSE 80 
