FROM php:5.5-cli

# Dependencies
RUN apt-get update && apt-get install -y libssl-dev \
	&& docker-php-ext-install pdo_mysql zip \
	&& printf "\n" | pecl install mongo \
	&& docker-php-ext-enable pdo_mysql zip mongo

RUN curl -sS https://getcomposer.org/installer | php