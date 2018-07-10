# Brief description on on how to run php scripts on ubuntu 16.04 terminal.
It is recommeded that you have the LAMP(Linux, Apache, MySQL and PHP) package installed.
## LAMP stack package download link
   https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-on-ubuntu-16-04.
## Accesing your virtual Machine via SSH:
```
   $ssh |username|@|ip_address|
   ```
# INSTALLING AND USING DOCKER ON UBUNTU 16.04
## Adding the GPG key for the official Docker repository to the system.
```
$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
$ sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
$ sudo apt-get update
```
## Finally, install Docker making use of the following command:
```
$sudo apt-get install -y docker-c, docker should now be installed and you can check it using:
$sudo systemctl status docker
$sudo docker login. 
$sudo docker images
```
#Docker Demonstration
This is the demonstration for building a Dockerfile and running the images with/without volume mount.
## Description

1)Building your own docker from Dockerfile, and 2)Mount a volume inside of a docker.

## How to build
```
docker build -t zenlab/visit-counter .
```
# How to run

## run with docker image built from Dockerfile
```
docker run --rm \
  -p 80:80 \
  --name visit-counter \
  zenlab/visit-counter
```
## run with official php docker image
```
docker run --rm \
  -p 80:80 \
  --name php \
  -v "$PWD/scripts":/var/www/html \
  php:7.0-apache
```
# How to overwrite the web root with a volume at runtime
```
docker run --rm \
  -p 80:80 \
  --name visit-counter \
  -v "$PWD/scripts":/var/www/html \
  zenlab/visit-counter
```
# How to access
```
http://localhost/counter.php
```
or
```
http://localhost/php.info
```
# Acknowledgments

Code adapted from http://justintadlock.com/web-design/counter

Docker image extended from https://hub.docker.com/_/php/
