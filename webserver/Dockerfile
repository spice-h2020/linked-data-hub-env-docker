FROM php:7.2-apache

# File Author / Maintainer
MAINTAINER enridaga
LABEL version="0.1.1"
LABEL description="SPICE Datahub Webserver image."

COPY 000-Default.conf /etc/apache2/sites-enabled/000-Default.conf
COPY spice-datahub-php.ini /usr/local/etc/php/conf.d/spice-datahub-php.ini
RUN a2enmod rewrite
RUN apt-get update && apt-get install -y apt-utils libicu-dev
RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN docker-php-ext-configure intl
RUN docker-php-ext-install intl
