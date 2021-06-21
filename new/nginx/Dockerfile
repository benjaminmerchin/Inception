FROM debian:buster

RUN apt-get update && apt-get install -y \
	nginx \
	openssl

RUN rm /etc/nginx/nginx.conf
COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY tools/hello.html /tmp/plop.html
COPY tools/hello.html /tmp/hello.html
COPY tools/run_me.sh .
#RUN cat /tmp/plop.html

#RUN mv /tmp/plop.html /var/www/html/hello.html

#RUN cat /var/www/html/hello.html

RUN mkdir -p /etc/nginx/ssl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/bmerchin.key -out /etc/nginx/ssl/bmerchin.crt -subj "/C=FR/ST=Paris/L=Paris/O=42Paris/OU=benjamin/CN=bmerchin"

EXPOSE 443

ENTRYPOINT [ "./run_me.sh" ]