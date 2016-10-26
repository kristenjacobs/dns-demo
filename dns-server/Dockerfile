FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y bind9 dnsutils
RUN apt-get install -y iputils-ping
RUN apt-get install -y vim

COPY named.conf.options /etc/bind/named.conf.options
COPY named.conf.local /etc/bind/named.conf.local
COPY db.dns.test /etc/bind/db.dns.test
COPY db.172 /etc/bind/db.172

CMD ["/usr/sbin/named", "-g"]
