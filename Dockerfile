FROM php:7.0-apache
COPY Scripts/info.php /var/www/html/
COPY Scripts/countlog.txt /var/www/html/
COPY Scripts/counter.php /var/www/html/
