FROM fengwk/vps-server-jdk17

COPY ["nacos-server-2.2.3.tar.gz.*", "/home/nacos/"]

RUN set -uex \
    && useradd -m nacos

RUN set -uex \
    && cat /home/nacos/nacos-server-2.2.3.tar.gz.* | tar -xzvC /home/nacos \
    && rm -f /home/nacos/nacos-server-2.2.3.tar.gz.* \
    && chown -Rf nacos:nacos /home/nacos

ADD ["vps-nacos", "/usr/local/bin"]

WORKDIR /home/nacos

CMD ["/bin/bash", "-c", "vps-nacos start"]
