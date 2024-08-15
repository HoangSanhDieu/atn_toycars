FROM php:7.4

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /app
COPY . /app


CMD php artisan serve --host=0.0.0.0 --port=8181
EXPOSE 8181
