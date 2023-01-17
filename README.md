# Learning PHP

### Parancsok
```sh
docker build -t learning-php .
docker run -d -p 80:80 -v "$PWD/app":/var/www/html --env-file ./env learning-php:latest
# to test http://localhost/index.php
```
composer
```
composer require google/apiclient:"^2.0"
```