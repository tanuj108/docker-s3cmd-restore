FROM debian:jessie
MAINTAINER Tanuj Singh <singhtanuj10@gmail.com>

RUN apt-get update && \
    apt-get install -y python python-pip cron && \
    rm -rf /var/lib/apt/lists/*

RUN pip install s3cmd

ADD s3cfg /root/.s3cfg

ADD startget.sh /startget.sh
RUN chmod +x /startget.sh

ADD get.sh /get.sh
RUN chmod +x /get.sh

ENTRYPOINT ["/startget.sh"]

CMD [""]
