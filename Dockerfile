FROM php:8.2-fpm

# RUN chmod -R 777 /home/indra/laravel-docker-medium/src/storage
# RUN chmod -R 777 /home/indra/laravel-docker-medium/src/html/bootstrap/cache

# run on host if issue with storage/logs
# sudo chown -R  www-data:www-data src/storage
# sudo chmod -R 775 src/storage

RUN docker-php-ext-install pdo pdo_mysql
