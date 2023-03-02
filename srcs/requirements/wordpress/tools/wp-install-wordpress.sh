#!/bin/bash

    # cd /var/hjrifi.ma/wordpress/
    wp core install  --url=${WORDPRESS_URL} --title=${WORDPRESS_TITLE} --admin_user=${WORDPRESS_DB_USER} --admin_password=${WORDPRESS_ADMIN_PASSWORD} --admin_email=${WORDPRESS_ADMIN_EMAIL} --allow-root
    wp theme install twentynineteen --allow-root
    wp theme activate twentynineteen --allow-root
    # cd 
    
    exec $@
