FROM debian:buster

RUN         apt-get update && apt-get install mariadb-server -y 


COPY        /conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY        /tools/install-mariadb.sh /scripts/install-mariadb.sh

ENTRYPOINT  ["sh", "scripts/install-mariadb.sh"]

CMD ["/usr/sbin/mysqld"]