FROM reedboat/debian:latest

MAINTAINER "reedboat" <zhqm03@gmail.com>

WORKDIR /tmp

COPY config/sources.list /etc/apt/sources.list

RUN apt-get update -y && \
    apt-get install -y nginx

ADD config/nginx.conf /opt/etc/nginx.conf
ADD config/app.conf /etc/nginx/sites-available/app.conf
RUN ln -s /etc/nginx/sites-available/app.conf /etc/nginx/sites-enabled/app.conf && \
    rm /etc/nginx/sites-enabled/default

ADD config/nginx-start.sh /opt/bin/nginx-start.sh
RUN chmod u=rwx /opt/bin/nginx-start.sh

RUN mkdir -p /data
VOLUME ["/data"]

EXPOSE 80
EXPOSE 443

WORKDIR /opt/bin
ENTRYPOINT ["/opt/bin/nginx-start.sh"]
