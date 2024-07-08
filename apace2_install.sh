#!/bin/bash

###################
#     Apache2     #
###################

sudo apt -y install apache2 php

sudo mv .apache2.conf apache2.conf

echo "Произведи настройку конфигурации httpd(Apache2) не меняя названия и введи Y. [Y/n]"
read apache2_ok

#sudo mv apache2.conf /etc/apache2/sites-available/$domain_name.conf
#sudo rm /etc/apache2/sites-available/000-default.conf