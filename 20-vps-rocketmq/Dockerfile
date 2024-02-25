FROM fengwk/vps-server-jdk17

RUN set -uex \
    && useradd -m rocketmq

ADD ["rocketmq-all-4.9.4-bin-release.tar.gz", "/home/rocketmq/"]

RUN set -uex \
    && mv /home/rocketmq/rocketmq-all-4.9.4-bin-release /home/rocketmq/rocketmq \
    && chown -R rocketmq:rocketmq /home/rocketmq

WORKDIR /home/rocketmq

CMD ["/bin/bash"]
