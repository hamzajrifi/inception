#!/bin/bash

    service mysql start
    
    mysql -u root -e "CREATE DATABASE ${MYSQL_DATABASE};"
    mysql -u root -e "CREATE USER '${MYSQL_USER}'@'localhost' IDENTIFIED BY '${MYSQL_PASSWORD}';" 
    mysql -u root -e "GRANT ALL PRIVILEGES ON wordpress.* TO '${MYSQL_USER}'@'localhost';"
    mysql -u root -e "FLUSH PRIVILEGES;"

    exec $@