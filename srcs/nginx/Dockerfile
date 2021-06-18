FROM debian:buster

LABEL key=bmerchin@student.42.fr

RUN apt-get update && apt-get install -y \
	nginx \
	openssl

RUN apt-get install -y \
	bash

COPY conf.d/nginx.conf /etc/nginx/nginx.conf
#COPY hello.html /var/www/bmerchin/hello.html

#CMD bash service nginx start

RUN mkdir -p /etc/nginx/ssl
#RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/localhost.key -out /etc/nginx/ssl/localhost.pem -subj "/C=FR/ST=Paris/L=Paris/O=42Paris/OU=benjamin/CN=localhost"

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	-keyout /etc/nginx/ssl/bmerchin.key -out /etc/nginx/ssl/bmerchin.crt \
	-subj "/C=FR/ST=Paris/L=Paris/O=42Paris/OU=benjamin/CN=bmerchin"

EXPOSE 443

CMD nginx -g "daemon off;"