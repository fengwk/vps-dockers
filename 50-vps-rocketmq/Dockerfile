FROM fengwk/vps-server-jdk8

RUN set -uex \
    && useradd -m rocketmq

ADD ["rocketmq-all-5.1.4-bin-release.tar.gz", "/home/rocketmq/"]

RUN set -uex \
    && mv /home/rocketmq/rocketmq-all-5.1.4-bin-release /home/rocketmq/rocketmq \
    && chown -R rocketmq:rocketmq /home/rocketmq

COPY ["vps-rocketmq-broker", "/usr/local/bin"]
COPY ["vps-rocketmq-namesrv", "/usr/local/bin"]

WORKDIR /home/rocketmq

ENTRYPOINT ["/bin/bash"]
