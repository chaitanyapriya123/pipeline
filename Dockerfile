
FROM ubuntu:20.04

LABEL maintainer="chaitanya <chaitanyapriya1211@gmail.com>"


RUN apt-get update && apt-get install -y apache2


RUN systemctl enable apache2


EXPOSE 80


CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
