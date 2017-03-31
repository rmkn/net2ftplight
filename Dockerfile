FROM rmkn/php
MAINTAINER rmkn

RUN yum install -y unzip
RUN curl -o /tmp/net2ftp_light.zip -SL http://www.net2ftp.com/download/net2ftp_v1.0_light.zip \
        && unzip /tmp/net2ftp_light.zip -d /tmp/ \
	&& mv /tmp/net2ftp_v1.0_light/files_to_upload/* /var/www/html/ \
        && chown -R apache. /var/www/html/*

COPY security.conf /etc/httpd/conf.d/
