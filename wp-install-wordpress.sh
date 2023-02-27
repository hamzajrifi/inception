#!/bin/bash

nginx
service mariadb start
service php7.4-fpm start

cd /var/www/html/wordpress/
wp core install --url=localhost --title=COLONEL --admin_user=hjrifi --admin_password=lcom --admin_email=hjrifi@mail.ma --allow-root
wp theme install twentynineteen --allow-root
wp theme activate twentynineteen --allow-root
cd 
exec $@
