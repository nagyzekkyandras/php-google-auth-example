FROM php:8.2-apache

# php 7.4
RUN apt-get update && \
    apt-get install -y libpq-dev libldap2-dev && \
    docker-php-ext-install pdo pdo_pgsql ldap

#RUN apt install curl php-cli php-mbstring git unzip

RUN curl -sS https://getcomposer.org/installer -o composer-setup.php

RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer

# Use the default production configuration
COPY php.ini /usr/local/etc/php/php.ini

USER 1001

RUN composer -v