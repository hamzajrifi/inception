#!/bin/bash

    nginx
    service mysql start
    service php7.3-fpm start

    mysql -u root -e "CREATE DATABASE ${MYSQL_DATABASE};"
    mysql -u root -e "CREATE USER '${MYSQL_USER}'@'localhost' IDENTIFIED BY '${MYSQL_PASSWORD}';" 
    mysql -u root -e "GRANT ALL PRIVILEGES ON wordpress.* TO '${MYSQL_USER}'@'localhost';"
    mysql -u root -e "FLUSH PRIVILEGES;"

   cd /var/www/html/wordpress/
   wp core install --url=${WORDPRESS_URL} --title=${WORDPRESS_TITLE} --admin_user=${WORDPRESS_DB_USER} --admin_password=${WORDPRESS_ADMIN_PASSWORD} --admin_email=${WORDPRESS_ADMIN_EMAIL} --allow-root
   wp theme install twentynineteen --allow-root
   wp theme activate twentynineteen --allow-root
   cd 
exec $@
