FROM debian:buster

LABEL key=bmerchin@student.42.fr

RUN apt-get update && apt-get install -y \
	nginx \
	openssl

RUN apt-get install -y \
	bash

COPY nginx.conf /etc/nginx/conf.d/default.conf

#CMD bash service nginx start

RUN mkdir -p /etc/nginx/ssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/localhost.key -out /etc/nginx/ssl/localhost.pem -subj "/C=FR/ST=Paris/L=Paris/O=42Paris/OU=benjamin/CN=localhost"

#CMD nginx -g "daemon off;"
CMD sh