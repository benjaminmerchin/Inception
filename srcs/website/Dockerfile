FROM nginx:alpine

RUN apk update && \
    apk upgrade && \
    apk add \
        bash \
		vim

COPY . /usr/share/nginx/html

RUN rm /etc/nginx/conf.d/default.conf && \
	mv /usr/share/nginx/html/default.conf /etc/nginx/conf.d/


# FROM debian:buster

# RUN apt-get update && apt-get install -y \
# 	nginx \
# 	bash

# COPY index.html /var/www/html/

# EXPOSE 80

# ENTRYPOINT ["nginx", "-g", "daemon off;"]