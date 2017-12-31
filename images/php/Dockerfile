FROM vatusa/base

RUN addgroup -S application && adduser -SG application application
ADD https://php.codecasts.rocks/php-alpine.rsa.pub /etc/apk/keys/php-alpine.rsa.pub
RUN echo "@php https://php.codecasts.rocks/v3.7/php-7.2" >> /etc/apk/repositories

RUN apk update && \
  apk-install php7@php \
	php7-pdo@php \
	php7-pdo_mysql@php \
	php7-curl@php \
	php7-xml@php \
	php7-json@php \
	php7-phar@php \
	php7-gmp@php \
	php7-zlib@php \
	php7-tokenizer@php \
	php7-openssl@php \
	php7-session@php \
	php7-ctype@php \
	php7-mbstring@php \
	php7-fpm@php

COPY ./vatusa.ini /usr/local/etc/php/conf.d
