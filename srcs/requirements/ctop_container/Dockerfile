FROM debian:buster

RUN     apt-get update && apt-get install -y wget

RUN     wget https://github.com/bcicen/ctop/releases/download/v0.7.1/ctop-0.7.1-linux-amd64  -O /usr/local/bin/ctop
RUN     chmod +x /usr/local/bin/ctop
VOLUME var/run/docker.sock:/var/run/docker.sock

CMD ["ctop"]