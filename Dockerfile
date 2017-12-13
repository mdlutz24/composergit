FROM php:7.2-fpm
COPY --from=composer:1.5 /usr/bin/composer /usr/bin/composer
RUN apt-get update && apt-get install -y git ssh awscli