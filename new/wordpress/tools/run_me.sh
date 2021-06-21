#!/bin/bash
mv wordpress html
mv html/ /var/www/
exec /usr/sbin/php-fpm7.3 -F
