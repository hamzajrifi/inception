FROM ubuntu

RUN apt update && apt install vim -y && apt install nginx -y

COPY	default.conf /etc/nginx/conf.d/default.conf
COPY	index.html  /usr/share/nginx/web/index.html
COPY	hjrifi.ma.key	/etc/nginx/ssl/hjrifi.ma/hjrifi.ma.key
COPY	hjrifi.ma.crt  /etc/nginx/ssl/hjrifi.ma/hjrifi.ma.crt

RUN nginx

CMD ["bash"]
