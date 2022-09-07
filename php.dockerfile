FROM wordpress:5.8.1-php7.4-apache

RUN pecl install xdebug-3.0.4

RUN docker-php-ext-enable xdebug

# Install wp-cli
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

# Change the default user
RUN chown -R nobody /var/www/html

USER nobody