#!/bin/bash
cd ~
mkdir /var/www/html/apps

# ocdownloader
tar xzvf master.tar.gz
mv ocdownloader-master ocdownloader
mv ocdownloader /var/www/html/apps/ocdownloader
rm master.tar.gz

# onlyoffice
tar xzvf onlyoffice.tar.gz
mv onlyoffice /var/www/html/apps/onlyoffice
rm onlyoffice.tar.gz

nohup sudo -u www-data aria2c -D --conf-path=/etc/aria2/aria2.conf