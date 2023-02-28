FROM debian:10

RUN apt-get update && apt-get install tzdata -y && \
				apt-get install -y vim \
				nginx\
				php-fpm php-mysql \
				mariadb-server \
				wget 

RUN		wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN 	chmod +x wp-cli.phar
RUN 	mv wp-cli.phar /usr/local/bin/wp

RUN  	wget https://wordpress.org/latest.tar.gz
RUN		tar xzvf latest.tar.gz
RUN		rm latest.tar.gz
RUN		mv wordpress /var/www/html/
RUN		chown -R www-data:www-data /var/www/html/

COPY	wp-install-wordpress.sh /scripts/wp-install-wrodpress.sh
COPY	wp-config.php /var/www/html/wordpress/wp-config.php
COPY	default.conf /etc/nginx/conf.d/default.conf
COPY	index.html  /usr/share/nginx/web/index.html
COPY	hjrifi.ma.key	/etc/nginx/ssl/hjrifi.ma/hjrifi.ma.key
COPY	hjrifi.ma.crt  /etc/nginx/ssl/hjrifi.ma/hjrifi.ma.crt


ENTRYPOINT ["bash", "scripts/wp-install-wrodpress.sh"]

CMD ["bash"]
