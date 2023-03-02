FROM debian:buster

RUN     apt-get update && apt-get install tzdata -y && \
        apt-get install -y php-fpm php-mysql \
        wget

RUN		wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN 	chmod +x wp-cli.phar
RUN 	mv wp-cli.phar /usr/local/bin/wp


WORKDIR /var/hjrifi.ma
RUN  	wget https://wordpress.org/latest.tar.gz
RUN		tar xzvf latest.tar.gz
RUN		rm latest.tar.gz
RUN		chown -R www-data:www-data /var/hjrifi.ma/wordpress


COPY	/tools/wp-install-wordpress.sh /scripts/wp-install-wrodpress.sh
COPY	/conf/wp-config.php /var/hjrifi.ma/wordpress/wp-config.php

ENTRYPOINT ["bash", "/scripts/wp-install-wrodpress.sh"]

CMD ["sh"]