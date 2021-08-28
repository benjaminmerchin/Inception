FROM alpine:3.14

RUN apk update && \
    apk upgrade && \
    apk add \
        bash \
		vim \
		nginx

COPY content /usr/share/nginx/html
COPY default.conf /usr/share/nginx/html

RUN rm /etc/nginx/conf.d/default.conf
RUN	mv /usr/share/nginx/html/default.conf /etc/nginx/conf.d/

EXPOSE 81

ENTRYPOINT ["nginx", "-g", "daemon off;"]
