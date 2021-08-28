FROM debian:buster

RUN apt-get update && apt-get install -y \
	nginx \
	openssl

RUN echo step_9_ok
RUN rm /etc/nginx/nginx.conf
COPY conf/nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /etc/nginx/ssl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/bmerchin.key -out /etc/nginx/ssl/bmerchin.crt -subj "/C=FR/ST=Paris/L=Paris/O=42Paris/OU=benjamin/CN=bmerchin"

EXPOSE 443

ENTRYPOINT [ "nginx", "-g", "daemon off;" ]