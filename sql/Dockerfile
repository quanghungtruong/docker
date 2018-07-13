FROM ubuntu:17.10

ENV OS_LOCALE="en_US.UTF-8"
RUN apt-get update && apt-get install -y locales && locale-gen ${OS_LOCALE} 
RUN apt-get install -y apache2 
RUN apt-get update \
    && apt-get install -y php 
VOLUME ["/var/www/html"]
EXPOSE 80
CMD ["/usr/sbin/apache2ctl -D FOREGROUND"]