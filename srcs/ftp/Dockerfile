FROM debian:buster

RUN apt-get update && apt-get install -y \
	vsftpd \
	ufw
#	dumb-init

COPY tools/run.sh .
COPY conf/vsftpd.conf .

#ENTRYPOINT ["/usr/bin/dumb-init", "--"]

CMD ["bash", "run.sh"]
#CMD ["bash", "-c", "do-some-pre-start-thing && exec my-server"]
