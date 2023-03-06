#!/bin/bash

    service mysql start
    echo "====== Start Mysql ======"
    
        mysql -u root -e "CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE};"
        mysql -u root -e "CREATE USER IF NOT EXISTS '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';" 
        mysql -u root -e "GRANT ALL PRIVILEGES ON wordpress.* TO '${MYSQL_USER}'@'%';"
        mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}' WITH GRANT OPTION;"
        mysql -u root -p${MYSQL_PASSWORD} -e "FLUSH PRIVILEGES;"

    echo "====== Database 'wordpress' instaled. ======"
    
    echo "====== Stop mysql ======"
    service mysql stop

    exec $@