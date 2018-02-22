This repository contains brief description on on how to run php scripts on ubuntu 16.04 terminal.
It is recommeded that you have the LAMP(Linux, Apache, MySQL and PHP) package installed.http://localhost/countlog.txt
Here is https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-on-ubuntu-16-04.
Accesing your virtual Machine via SSH: $ssh |username|@|ip_address|
The rest of the codes for counter.php and countlog.txt scripts are indicated on the respective file names on this visit-couter 
repository.
INSTALLING AND USING DOCKER ON UBUNTU 16.04
First,I added the GPG key for the official Docker repository to the system typing the following command:
$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
$ sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
$ sudo apt-get update
Finally, install Docker making use of the following command:
$sudo apt-get install -y docker-c, docker should now be installed and you can check it using:
$sudo systemctl status docker
To Login to docker, $sudo docker login. 
To check for available or downloaded docker images, use $sudo docker images
you need to first clone your repo, ie: 
$git clone https://github.com/Username/RepoName
$sudo systemctl stop apache2 and $sudo systemctl disable apache2.service and then remove the container by typing $sudo docker rm php.
Then run this command $sudo docker run -dti -p 80:80 --name php -v "$PWD":/var/www/html php:7.0-apache then create a dockerfile:
$sudo touch dockerfile, $sudo nano dockerfile. then type $sudo docker build -t anyname/php:interns-1.0.0 .
For me to run all the files on the local browser, in each of the files(info.php, counter.php, countlog.txt), I have changed the file permission to 777 using this command: $sudo chmod 777 |script.php|  
