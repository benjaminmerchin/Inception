FROM debian:buster

RUN apt-get update && apt-get install -y nginx

COPY nginx.conf /etc/nginx/conf.d/default.conf

CMD bash service nginx start && bash