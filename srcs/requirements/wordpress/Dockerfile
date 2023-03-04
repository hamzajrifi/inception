FROM debian:buster

RUN     apt-get update && apt-get install tzdata -y && \
        apt-get install -y php-fpm php-mysql \
        wget

RUN     wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN     chmod +x wp-cli.phar
RUN     mv wp-cli.phar /usr/local/bin/wp

WORKDIR /tmp/hjrifi.ma
RUN     if [ ! -d "/home/colonel/data/wordpress" ]; then \
                echo "------ install wordpress ------ ...." && \
                wget https://wordpress.org/latest.tar.gz && \
                tar xzvf latest.tar.gz && \
                rm latest.tar.gz && \
                chown -R www-data:www-data /tmp/hjrifi.ma/wordpress;\
        fi

RUN     sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 0.0.0.0:9000/g'  /etc/php/7.3/fpm/pool.d/www.conf
COPY	/tools/wp-install-wordpress.sh /scripts/wp-install-wrodpress.sh
COPY	/conf/wp-config.php /tmp/hjrifi.ma/wordpress/wp-config.php


ENTRYPOINT ["bash", "/scripts/wp-install-wrodpress.sh"]

CMD ["/usr/sbin/php-fpm7.3", "-F"] 