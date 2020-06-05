#This is the DOCKERFILE for assignment2 
FROM ubuntu 
MAINTAINER Omkar Asgaonkar <omasgaonkar@gmail.com>
RUN apt-get update
ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt install php-pear php-fpm php-dev php-zip php-curl php-xmlrpc php-gd php-mysql php-mbstring php-xml libapache2-mod-php -y
RUN apt-get install apache2 -y 
RUN apt install mysql-server -y
RUN service apache2 restart 
RUN rm /var/www/html/index.* && ls
RUN echo '<?php echo "Hello World!"; ?>' >/var/www/html/index.php
