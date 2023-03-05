FROM debian:buster

RUN     apt-get update && apt-get install tzdata -y && \
        apt-get install -y php-fpm php-mysql \
        wget

RUN     wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN     chmod +x wp-cli.phar
RUN     mv wp-cli.phar /usr/local/bin/wp

WORKDIR         /var/hjrifi.ma

RUN     if [ ! -d "/var/hjrifi.ma/wordpress" ]; then \
                echo "------ install wordpress ------ ...." && \
                wget https://wordpress.org/latest.tar.gz && \
                tar xzvf latest.tar.gz && \
                rm latest.tar.gz && \
                chown -R www-data:www-data /var/hjrifi.ma/wordpress;\
        fi

RUN     sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 0.0.0.0:9000/g'  /etc/php/7.3/fpm/pool.d/www.conf

# update file conf | use it in volume 
COPY     /conf/wp-config.php /var/hjrifi.ma/wordpress/wp-config.php
COPY	/tools/wp-install-wordpress.sh /scripts/wp-install-wrodpress.sh


ENTRYPOINT ["bash", "/scripts/wp-install-wrodpress.sh"]

CMD ["/usr/sbin/php-fpm7.3", "-F"] 