FROM debian:11.11

RUN apt update && apt install -y \
    php php-fpm wget \
    mariadb-client php7.4-fpm \
    php7.4-gd php7.4-mbstring php7.4-zip \
    php7.4-intl php7.4-curl \
    php-mysqli \
    php7.4-mysql \
    php7.4-xml \
    php-imagick \
    curl \
    && apt clean \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /var/www/html && \
    wget https://wordpress.org/latest.tar.gz && \
    tar -xvf latest.tar.gz && \
    mv wordpress/* /var/www/html/ && \
    rm -rf wordpress latest.tar.gz
RUN chown -R www-data:www-data /var/www/html && \
    chmod -R 755 /var/www/html
    
COPY ./conf/wp-config.php /var/www/html/wp-config.php
RUN mkdir -p /run/php


EXPOSE 9000


CMD ["/usr/sbin/php-fpm7.4", "--nodaemonize"]
