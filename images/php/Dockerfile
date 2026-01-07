FROM vatusa/base

RUN addgroup -S application && adduser -SG application application

RUN apk update && \
  apk add php83-pdo \
      php83-pdo_mysql \
      php83-curl \
      php83-dom \
      php83-xml \
      php83-xmlwriter \
      php83-simplexml \
      php83-json \
      php83-phar \
      php83-gmp \
      php83-zlib \
      php83-tokenizer \
      php83-openssl \
      php83-session \
      php83-ctype \
      php83-mbstring \
      php83-fpm \
      php83-fileinfo \
      php83-pecl-redis \
      php83-iconv \
      php83

RUN ln -s /usr/bin/php83 /usr/bin/php
RUN ln -s /usr/bin/phar83 /usr/bin/phar

COPY ./vatusa.ini /etc/php83/conf.d/99-vatusa.ini
