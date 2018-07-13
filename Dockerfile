FROM ubuntu:17.10

ENV OS_LOCALE="en_US.UTF-8"
RUN apt-get update && apt-get install -y locales && locale-gen ${OS_LOCALE}

COPY entrypoint.sh /sbin/entrypoint.sh

RUN apt-get install -y apache2 
RUN apt-get update \
    && apt-get install -y php php7.1-fpm zip unzip php7.1-zip php7.1-xml php7.1-mbstring libapache2-mod-php7.1
VOLUME ["/var/www/html"]
EXPOSE 80
CMD ["/sbin/entrypoint.sh"]