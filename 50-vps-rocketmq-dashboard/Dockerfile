FROM fengwk/vps-server-jdk8

RUN set -uex \
    && useradd -m rocketmq

ADD ["rocketmq-dashboard-1.0.0.jar", "/home/rocketmq/"]

RUN set -uex \
    && chown -R rocketmq:rocketmq /home/rocketmq

COPY ["vps-rocketmq-dashboard", "/usr/local/bin"]

WORKDIR /home/rocketmq

ENTRYPOINT ["/bin/bash", "-c", "vps-rocketmq-dashboard start"]
