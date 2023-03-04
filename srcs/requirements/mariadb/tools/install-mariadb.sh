#!/bin/bash

    service mysql start
    result=$(mysql -u hjrifi -p -e "use wordpress;" 2>&1)
    
    if [[ "$result" == *"Unknown database"* ]]; then
        mysql -u root -e "CREATE DATABASE ${MYSQL_DATABASE};"
        mysql -u root -e "CREATE USER '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';" 
        mysql -u root -e "GRANT ALL PRIVILEGES ON wordpress.* TO '${MYSQL_USER}'@'%';"
        mysql -u root -e "FLUSH PRIVILEGES;"
    else
        echo "Database 'wordpress' already exists."
    fi
    
    service mysql stop
    exec $@