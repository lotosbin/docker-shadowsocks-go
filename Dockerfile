FROM debian:latest
MAINTAINER lotosbin <lotosbin@gmail.com>
ADD ./shadowsocks-server-linux64-1.1.5.gz /etc/ss-server/
RUN chmod +x /etc/ss-server

ENTRYPOINT ["/etc/ss-server"]
