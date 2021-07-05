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

RUN echo step_29_ok
#COPY conf/config.inc.php .
COPY conf/wp-config.php .

#INSTALL WORDPRESS
RUN mkdir -p /var/www
			#RUN mkdir -p /var/www/html
#RUN wget http://wordpress.org/latest.tar.gz
#RUN tar -zvxf latest.tar.gz && rm latest.tar.gz
#RUN mv wordpress html && mv html /var/www/
			#RUN mv wp-config.php /var/www/wordpress/.

#INSTALL PHP
# RUN cd /var/www/bmerchin
# RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.1/phpMyAdmin-5.0.1-english.tar.gz
# RUN tar -zvxf phpMyAdmin-5.0.1-english.tar.gz && rm -rf phpMyAdmin-5.0.1-english.tar.gz
# RUN mv phpMyAdmin-5.0.1-english phpmyadmin
# RUN mv ../../../config.inc.php phpmyadmin/. && cd && cd ..

#CMD php7.3-fpm -g "daemon off;"

RUN echo "listen = 9000" >> /etc/php/7.3/fpm/pool.d/www.conf

RUN mv wp-config.php /var/www/html/wp-config.php

RUN mkdir -p /run/php/
COPY tools/run_me.sh .

EXPOSE 9000

CMD ["bash", "run_me.sh"]