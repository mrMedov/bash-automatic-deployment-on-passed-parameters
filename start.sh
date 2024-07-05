#!/bin/bash

echo "##############################################"
echo "   Добро пожаловать в мастер развертывания.   "
echo "Используй 1 как ответ 'да' и 0 как ответ 'нет'"
echo "##############################################"
echo ""

sudo bash ./server_settings.sh
echo ""

echo "Будем ставить nginx? [1/0]"
read nginx_install

if nginx_install -eq 1
then
sudo mkdir -p /var/www/$domain_name/log/{apache2,nginx}
else
#sudo mkdir -p /var/www/$domain_name/log/{apache2,nginx}



echo "Будем ставить apache2? [1/0]"
read apache2_install
