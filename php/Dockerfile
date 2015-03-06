FROM reedboat/debian:latest
MAINTAINER reedboat <zhqm03@gmail.com>

RUN apt-get update -y && \
    apt-get -y install \
    php5 \
    php5-common \
    php5-fpm \
    php5-curl \
    php5-json \
    php5-mcrypt \
    php5-memcached \
    php5-intl \
    php5-mysql \
    php5-readline \
    php5-sqlite \
    php5-gd \
    php5-cli \
    wget \
    && \
    apt-get clean

WORKDIR /tmp

CMD php -m
