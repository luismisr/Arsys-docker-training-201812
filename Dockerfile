FROM ubuntu:18.04

LABEL MAINTAINER="lsanchez@arsys.es"

RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get install -y libltdl7 && rm -rf /var/lib/apt/lists/*
RUN useradd luismi

RUN echo '<marquee>Hello from Arsys!!</marquee>' \
    > /var/www/html/index.html

EXPOSE 80

VOLUME [ "/arsys-data" ]

USER luismi
