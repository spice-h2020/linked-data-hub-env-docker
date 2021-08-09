FROM php:7.4-apache

# File Author / Maintainer
MAINTAINER enridaga
LABEL version="0.5"
LABEL description="SPICE Datahub Webserver image."

COPY 000-Default.conf /etc/apache2/sites-enabled/000-Default.conf
COPY spice-datahub-php.ini /usr/local/etc/php/conf.d/spice-datahub-php.ini
RUN a2enmod rewrite
RUN apt-get update && apt-get install -y apt-utils libicu-dev git
RUN apt-get install -y libcurl4-openssl-dev pkg-config libssl-dev unzip

RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN docker-php-ext-configure intl
RUN docker-php-ext-install intl
RUN curl -sS https://getcomposer.org/installer | php -- --version=1.10.22 --install-dir=/usr/local/bin --filename=composer \
    && ln -s $(composer config --global home) /root/composer
ENV PATH=$PATH:/root/composer/vendor/bin COMPOSER_ALLOW_SUPERUSER=1

