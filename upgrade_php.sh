#!/bin/bash
# PHP Upgrade
apt install php libapache2-mod-php php-mysql
php -v 
update-alternatives --set php /usr/bin/php8.4
a2dismod php8.0 
a2enmod php8.4
systemctl restart apache2