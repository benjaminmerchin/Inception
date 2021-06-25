FROM debian:buster

LABEL key="bmerchin@student.42.fr"

RUN apt-get update && apt-get install -y \
	wget \
	mariadb-server \
	mariadb-client \
	gettext-base \
	bash \
	vim

RUN rm /etc/mysql/my.cnf && echo "[mysqld]\ngeneral_log=1\nuser=root\nport=3306\nbind=0.0.0.0\nskip-networking=false" > /etc/mysql/my.cnf

COPY tools/createdb.sh /tmp/.

EXPOSE 3306

ENTRYPOINT ["./tmp/createdb.sh"]