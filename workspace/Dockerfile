
FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive
WORKDIR /var/www

RUN apt-get update && apt-get install -y curl \
    git \
    php7.4 \
    nano \
    supervisor \
    php7.4-mysql \
    php7.4-xml \
    php7.4-gd \
    php7.4-zip \
    php7.4-mbstring \
    php7.4-curl \
    php7.4-xdebug \
    cron && which cron && \
    rm -rf /etc/cron.*/*  \
    zlib1g-dev

#Intall composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install node
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs

USER root

# CRONTAB
COPY ./cron/* /etc/cron.d/
# Give execution rights on the cron job
RUN chmod 0644 /etc/cron.d/*
# Apply cron job
RUN crontab /etc/cron.d/*
# Create the log file to be able to run tail
RUN touch /var/log/cron.log
# Run the command on container startup
CMD cron && tail -f /var/log/cron.log