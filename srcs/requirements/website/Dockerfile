FROM debian:buster

RUN     apt-get update && apt-get install -y nginx
COPY    index.html /var/hjrifi.ma/index.html

CMD ["nginx", "-g", "daemon off;"]
