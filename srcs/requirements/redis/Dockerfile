FROM debian:buster

RUN       apt-get update && apt-get install -y redis-server

# RUN     sed -i 's/# bind 127.0.0.1 ::1/bind 0.0.0.0/' /etc/redis/redis.conf
# RUN     sed -i 's/# requirepass foobared/requirepass foobared/' /etc/redis/redis.conf
# RUN     sed -i 's/# maxmemory <bytes>/maxmemory 124mb/' /etc/redis/redis.conf
# RUN     sed -i 's/# maxmemory-policy noeviction/ maxmemory-policy allkeys-lru/' /etc/redis/redis.conf
# maxmemory <bytes>
# COPY    /conf/redis.conf /etc/redis/redis.conf


# maxmemory-policy noeviction
CMD ["redis-server"]
#redis-cli info stats
#redis-cli info server