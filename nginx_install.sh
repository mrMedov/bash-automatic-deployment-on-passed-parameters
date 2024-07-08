#!/bin/bash

###################
#      Nginx      #
###################

sudo apt -y install nginx

if [ $1 = 1 ]
then
sudo mv .nginx_apache2.conf nginx.conf
sudo rm .nginx_php-fpm.conf
else
sudo mv .nginx_php-fpm.conf nginx.conf
sudo rm .nginx_apache2.conf
fi

echo "Произведи настройку конфигурации nginx не меняя названия и введи 1. [1/0]"
read apache2_ok

sudo mv nginx.conf /etc/nginx/sites-available/$domain_name
sudo rm /etc/nginx/sites-available/default
sudo ln -s /etc/nginx/sites-available/$domain_name /etc/nginx/sites-enabled/