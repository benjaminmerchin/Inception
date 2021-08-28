FROM alpine:3.14

RUN echo '@testing http://nl.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories && \
    echo '@community http://nl.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories && \
    apk update && \
    apk upgrade && \
    apk add \
        wget \
		bash \
		vim \
        ca-certificates \
        php7@testing \
        php7-session@testing \
        php7-mysqli@testing \
        dumb-init && \
    wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php -O /srv/index.php && \
    apk del wget ca-certificates && \
    rm -rf /var/cache/apk/*

WORKDIR /srv
EXPOSE 8080

ENTRYPOINT ["dumb-init", "--"]

CMD /usr/bin/php -S 0.0.0.0:8080