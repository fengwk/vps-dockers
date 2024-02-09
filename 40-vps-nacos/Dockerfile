FROM fengwk/vps-server-jdk17

COPY ["nacos-server-2.2.3.tar.gz.*", "/usr/local/"]

RUN set -uex \
    && cat /usr/local/nacos-server-2.2.3.tar.gz.* | tar -xzvC /usr/local \
    && rm -f /usr/local/nacos-server-2.2.3.tar.gz.*

ADD ["vps-nacos", "/usr/local/bin"]

CMD ["/bin/bash", "-c", "vps-nacos start"]
