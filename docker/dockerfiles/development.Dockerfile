# DOCKERFILE DEVELOPMENT
FROM bitnami/php-fpm:7.3

RUN install_packages autoconf build-essential php-redis

RUN pecl install redis

WORKDIR /app
