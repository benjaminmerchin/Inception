#!/bin/bash
service mysql start
sleep 5

echo "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci" | mysql -u root
echo "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD'" | mysql -u root
echo "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE .* TO '$MYSQL_USER'@'%' WITH GRANT OPTION;" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root

# service mysql stop
# ./usr/bin/mysqld_safe
pkill mariadb
pkill mysqld
exec mysqld && mariadb