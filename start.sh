#!/bin/bash

echo "##############################################"
echo "   Добро пожаловать в мастер развертывания.   "
echo "Используй 1 как ответ 'да' и 0 как ответ 'нет'"
echo "##############################################"
echo ""

#Server Block
sudo bash ./server_settings.sh
echo ""

echo "Server Block End"
domain_name=satana.com

#Nginx block
echo "Будем ставить nginx? [1/0]"
read nginx_install

if [ $nginx_install = 1 ]
then
sudo mkdir -p /var/www/$domain_name/log/nginx
sudo bash ./nginx_install.sh
fi
echo ""

#Apache block
echo "Будем ставить apache2? [1/0]"
read apache2_install

if [ $apache2_install = 1 ]
then
sudo mkdir -p /var/www/$domain_name/log/apache2
fi

#PHP-FPM block
#system=`hostnamectl | grep System: | awk '{print $3}'`
#echo $system
echo "Будем ставить PHP-FPM? [1/0]"
read PHPFPM_install

if [ $PHPFPM_install = 1 ]
then
sudo mkdir -p /var/www/$domain_name/log/PHPFPM_install
fi

#PHP-FPM block
#system=`hostnamectl | grep System: | awk '{print $3}'`
#echo $system
echo "Будем ставить PHP-FPM? [1/0]"
read PHPFPM_install

if [ $PHPFPM_install = 1 ]
then
sudo mkdir -p /var/www/$domain_name/log/PHPFPM_install
fi