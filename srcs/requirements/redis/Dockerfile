FROM debian:buster

RUN         apt-get update && apt-get install redis-server -y 

# RUN     sed -i 's/# bind 127.0.0.1 ::1/bind 0.0.0.0/' /etc/redis/redis.conf
# RUN     sed -i 's/# requirepass foobared/requirepass lcom/' /etc/redis/redis.conf
# RUN     sed -i 's/# maxmemory <bytes>/maxmemory 124mb' /etc/redis/redis.conf
# RUN     sed -i 's/# maxmemory-policy noeviction/ maxmemory-policy allkeys-lru/' /etc/redis/redis.conf
# maxmemory <bytes>
# maxmemory-policy noeviction
CMD ["bash"]