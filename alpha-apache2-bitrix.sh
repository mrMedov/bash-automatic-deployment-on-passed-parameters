#!/bin/bash

###################
# Server Settings #
###################

## Users
echo "Введите доменное имя формата [домен второго уровня.домен первого уровня]"
read domain_name

echo "Введите незанятый идентификатор"
read group_user

sudo groupadd -g $group_user $domain_name
sudo useradd -g $group_user -u $group_user -s /bin/bash -d /var/www/$domain_name $domain_name

## Catalogs
sudo mkdir -p /var/www/$domain_name/{data,log,sess,tmp,upload}
sudo mkdir -p /var/www/$domain_name/log
sudo mkdir -p /var/www/$domain_name/log/{apache2,nginx}
sudo chown -R $domain_name: /var/www/$domain_name
sudo chmod 751 /var/www/$domain_name
sudo chmod o+x /var/www/$domain_name/data /var/www/$domain_name/log/*

###################
#     Apache2     #
###################

sudo apt -y install apache2

echo "Произведи настройку конфигурации httpd(Apache2) не меняя названия. [Y/n]"
read apache2_ok

#sudo mv default.conf /etc/apache2/sites-available/$domain_name.conf
#sudo rm /etc/apache2/sites-available/000-default.conf



