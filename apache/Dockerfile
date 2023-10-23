FROM php:7.4-apache
RUN a2enmod rewrite
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y --no-install-recommends openssl libssl-dev libcurl4-openssl-dev
# Install mongodb
RUN pecl install mongodb
RUN echo "extension=mongodb.so; extension=intl;" >> /usr/local/etc/php/php.ini
# Install xdebug
RUN pecl install xdebug-3.0.3
RUN docker-php-ext-enable xdebug
# Enable intl
RUN apt-get install -y libicu-dev \
&& docker-php-ext-configure intl \
&& docker-php-ext-install intl
