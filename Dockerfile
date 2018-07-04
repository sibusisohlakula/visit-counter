FROM php:7.0-apache
USER root
COPY Scripts/info.php /var/www/html/
COPY Scripts/countlog.txt /var/www/html/
COPY Scripts/counter.php /var/www/html/
RUN apt-get install curl -y
RUN curl -sSL https://get.docker.com/ | sh
RUN apt-get update
RUN apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common -y
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
