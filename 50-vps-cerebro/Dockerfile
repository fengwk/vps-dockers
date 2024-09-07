FROM fengwk/vps-server-jdk11

RUN set -uex \
    && useradd -m cerebro

ADD ["cerebro-0.9.4.tar.gz", "/home/cerebro"]

RUN set -uex \
    && mv /home/cerebro/cerebro-0.9.4 /home/cerebro/cerebro \
    && chown -R cerebro:cerebro /home/cerebro

COPY ["vps-cerebro", "/usr/local/bin"]

WORKDIR /home/cerebro

ENTRYPOINT ["/bin/bash", "-c", "vps-cerebro start"]
