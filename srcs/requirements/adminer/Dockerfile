FROM debian:buster

RUN     mkdir -p /var/adminer
RUN     apt-get update && apt-get install -y vim php-fpm php-mysql wget
RUN     wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php -O /var/adminer/index.php
RUN     sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 0.0.0.0:80/g'  /etc/php/7.3/fpm/pool.d/www.conf
RUN     service php7.3-fpm start
RUN     echo "adminer is starting ......"
RUN     service php7.3-fpm stop


CMD ["/usr/sbin/php-fpm7.3", "-F"] 
