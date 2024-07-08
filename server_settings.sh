###################
# Server Settings #
###################

sudo apt update

## Users
echo "Введите доменное имя формата [домен второго уровня.домен первого уровня]"
read domain_name

echo "Введите незанятый идентификатор. Например 100001"
read group_user

sudo groupadd -g $group_user $domain_name
sudo useradd -g $group_user -u $group_user -s /bin/bash -d /var/www/$domain_name $domain_name

## Catalogs
sudo mkdir -p /var/www/$domain_name/{data,log,sess,tmp,upload}
sudo mkdir -p /var/www/$domain_name/log
sudo chown -R $domain_name: /var/www/$domain_name
sudo chmod 751 /var/www/$domain_name
sudo chmod o+x /var/www/$domain_name/data /var/www/$domain_name/log/*