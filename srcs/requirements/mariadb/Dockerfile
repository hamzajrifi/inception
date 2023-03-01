FROM debian:buster

RUN     apt-get update && apt-get install mariadb-server -y 

COPY    install-mariadb.sh /scripts/install-mariadb.sh

ENTRYPOINT ["sh", "scripts/install-mariadb.sh"]

CMD ["mysql"]