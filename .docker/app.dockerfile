FROM php:7.3-fpm

RUN apt-get update

# Imagick
RUN apt-get install -y --no-install-recommends libmagickwand-dev
RUN pecl install imagick
RUN docker-php-ext-enable imagick

# XML
RUN apt-get install -y --no-install-recommends libxml2-dev
RUN docker-php-ext-install xml

# Misc
RUN docker-php-ext-install bcmath json mbstring pdo_mysql

# Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Xdebug
RUN pecl install xdebug
RUN docker-php-ext-enable xdebug

# Clean
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*
