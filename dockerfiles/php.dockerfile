FROM php:8.1-fpm-alpine

WORKDIR /var/www/html

COPY src .

RUN docker-php-ext-install pdo pdo_mysql

RUN chmod -R 770 /var/www/html
# we are not using command here so by default command from base image will be used
# that command will invoke interpreter for php