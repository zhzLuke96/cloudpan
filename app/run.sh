#!/bin/bash
cd ~

mkdir /var/www/html/apps

# ocdownloader
wget https://github.com/e-alfred/ocdownloader/archive/master.tar.gz
tar xzvf master.tar.gz
mv ocdownloader-master ocdownloader
mv ocdownloader /var/www/html/apps/ocdownloader
rm master.tar.gz

# onlyoffice
wget https://github.com/ONLYOFFICE/onlyoffice-nextcloud/releases/download/v2.1.10/onlyoffice.tar.gz
tar xzvf onlyoffice.tar.gz
mv onlyoffice /var/www/html/apps/onlyoffice
rm onlyoffice.tar.gz

sudo -u www-data aria2c -D --conf-path=/etc/aria2/aria2.conf

php-fpm