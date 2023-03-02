FROM debian:buster

RUN     apt-get update && apt-get install -y vim nginx

COPY	conf/default.conf /etc/nginx/conf.d/default.conf
COPY	tools/hjrifi.ma.key	/etc/nginx/ssl/hjrifi.ma/hjrifi.ma.key
COPY	tools/hjrifi.ma.crt  /etc/nginx/ssl/hjrifi.ma/hjrifi.ma.crt

CMD ["nginx", "-g", "daemon off;"]
