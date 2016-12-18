FROM debian:latest
MAINTAINER lotosbin <lotosbin@gmail.com>
ARG SS_VERSION=1.1.5
RUN curl https://github.com/shadowsocks/shadowsocks-go/releases/download/${SS_VERSION}/shadowsocks-server-linux64-${SS_VERSION}.gz > /etc/ss-server.gz \ 
 && gunzip /etc/ss-server.gz && rm /etc/ss-server.gz
RUN chmod +x /etc/ss-server

ENTRYPOINT ["/etc/ss-server"]
