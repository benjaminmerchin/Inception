FROM debian:buster

LABEL key=bmerchin@student.42.fr

RUN apt-get update && apt-get install -y \
	wget

RUN apt-get install -y \
	php7.3 \
	php7.3-mysql \
	php7.3-fpm \
	php7.3-curl \
	php7.3-gd \
	php7.3-intl \
	php7.3-mbstring \
	php7.3-soap \
	php7.3-xml \
	php7.3-xmlrpc \
	php7.3-zip

RUN apt-get install -y \
	bash

COPY config.inc.php .
COPY wp-config.php .

#INSTALL WORDPRESS
RUN mkdir -p /var/www/bmerchin
RUN cd /var/www/bmerchin
RUN wget http://wordpress.org/latest.tar.gz
RUN tar -zvxf latest.tar.gz && rm latest.tar.gz
#RUN mv wordpress/ /var/www/bmerchin/.
RUN mv ../../../wp-config.php wordpress/.

#INSTALL PHP
# RUN cd /var/www/bmerchin
# RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.1/phpMyAdmin-5.0.1-english.tar.gz
# RUN tar -zvxf phpMyAdmin-5.0.1-english.tar.gz && rm -rf phpMyAdmin-5.0.1-english.tar.gz
# RUN mv phpMyAdmin-5.0.1-english phpmyadmin
# RUN mv ../../../config.inc.php phpmyadmin/. && cd && cd ..

#CMD php7.3-fpm -g "daemon off;"
CMD sleep infinity