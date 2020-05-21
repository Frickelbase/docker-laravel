FROM jguyomard/laravel-php:7.3

MAINTAINER Frickelbase <frickelbase@protonmail.com>

#RUN apk add --no-cache --virtual .build-deps \
#        $PHPIZE_DEPS \
#        curl-dev \
#        imagemagick-dev \
#        libtool \
#        libxml2-dev \
#        postgresql-dev \
#        sqlite-dev \
#    && apk add --no-cache \
#        curl \
#        git \
#        imagemagick \
#        mysql-client \
#        postgresql-libs \
#        libintl \
#        icu \
#        icu-dev \
#        libzip-dev \
RUN apk add --no-cache --update rsync libpng-dev npm
#RUN pecl install imagick \
#RUN docker-php-ext-enable imagick
RUN docker-php-ext-install gd

#WORKDIR /var/www