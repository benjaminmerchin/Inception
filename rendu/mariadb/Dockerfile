FROM debian:buster

MAINTAINER bmerchin@student.42.fr

RUN apt-get update && apt-get install -y \
	wget \
	mariadb-server \
	mariadb-client \
	gettext-base

RUN service mysql start

RUN echo "CREATE DATABASE wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;" | mysql -u root --skip-password
RUN echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'root'@'localhost' WITH GRANT OPTION;" | mysql -u root --skip-password
RUN echo "UPDATE mysql.user set plugin='mysql_native_password' WHERE user='root';" | mysql -u root --skip-password
RUN echo "FLUSH PRIVILEGES;" | mysql -u root --skip-password

RUN service mysql restart

#MD mysql -g "daemon off;"