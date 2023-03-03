#!/bin/bash


    sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 0.0.0.0:9000/g'  /etc/php/7.3/fpm/pool.d/www.conf
    service php7.3-fpm start
    mv /tmp/hjrifi.ma/wordpress/ /var/
    cd /var/hjrifi.ma/wordpress/
    wp core install  --url=${WORDPRESS_URL} --title=${WORDPRESS_TITLE} --admin_user=${WORDPRESS_DB_USER} --admin_password=${WORDPRESS_ADMIN_PASSWORD} --admin_email=${WORDPRESS_ADMIN_EMAIL} --allow-root
    wp theme install twentynineteen --allow-root
    wp theme activate twentynineteen --allow-root
    # cd 
    
    exec $@
