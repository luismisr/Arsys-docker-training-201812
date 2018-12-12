FROM ubuntu:18.04

LABEL MAINTAINER="lsanchez@arsys.es"

RUN apt-get update
RUN apt-get install -y nginx

RUN echo '<marquee>Hello from Arsys!!</marquee>' \
    > /var/www/html/index.html

EXPOSE 80 443 8080

CMD [ "nginx","-g","daemon off;" ]
