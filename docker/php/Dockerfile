FROM php:7.4-fpm

ARG APP_NAME
ENV APP_NAME $APP_NAME

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        openssl \
        libpng-dev \
        libicu-dev \
        libpq-dev \
        libxpm-dev \
        libvpx-dev \
        libzip-dev

RUN pecl install xdebug

RUN docker-php-ext-enable xdebug \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install -j$(nproc) intl \
    && docker-php-ext-install -j$(nproc) zip \
    && docker-php-ext-install -j$(nproc) pgsql \
    && docker-php-ext-install -j$(nproc) pdo_pgsql \
    && docker-php-ext-install -j$(nproc) exif


RUN groupadd -g 1000 www
RUN useradd -u 1000 -ms /bin/bash -g www www

COPY ./backend /var/www/$APP_NAME

COPY --chown=www:www . /var/www/$APP_NAME

USER www

WORKDIR /var/www/$APP_NAME

EXPOSE 9000
CMD ["php-fpm"]
