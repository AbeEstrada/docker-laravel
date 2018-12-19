FROM php:7.2-fpm

RUN apt-get update

# Curl
RUN apt-get install -y libcurl4-openssl-dev
RUN docker-php-ext-install curl

# GD
RUN apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libpng-dev libgd-dev
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/
RUN docker-php-ext-install -j$(nproc) gd exif

# Mcrypt
RUN apt-get install -y libmcrypt-dev
RUN pecl install mcrypt-1.0.1
RUN docker-php-ext-enable mcrypt

# XML
RUN apt-get install -y libxml2-dev
RUN docker-php-ext-install xml

# Intl
RUN apt-get install -y libicu-dev
RUN docker-php-ext-configure intl
RUN docker-php-ext-install intl

# Misc
RUN apt-get install -y git zip unzip
RUN docker-php-ext-install bcmath ctype calendar json mbstring opcache pdo pdo_mysql tokenizer zip

# Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Xdebug
RUN pecl install xdebug
RUN docker-php-ext-enable xdebug

# Clean
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*
