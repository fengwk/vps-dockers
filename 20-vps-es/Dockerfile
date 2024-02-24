FROM fengwk/vps-tailscale-server

RUN set -uex \
    && useradd -m es

COPY ["elasticsearch-8.12.2-linux-x86_64.tar.gz.*", "/home/es/"]

RUN set -uex \
    && cat /home/es/elasticsearch-8.12.2-linux-x86_64.tar.gz.* | tar -xzvC /home/es \
    && rm -f /home/es/elasticsearch-8.12.2-linux-x86_64.tar.gz.* \
    && mv /home/es/elasticsearch-8.12.2 /home/es/es

ADD ["ik-8.12.2.tar.gz", "/home/es/es/plugins"]
ADD ["pinyin-8.12.2.tar.gz", "/home/es/es/plugins"]

RUN set -uex \
    && chown -R es:es /home/es

COPY ["vps-es", "/usr/local/bin"]

ENTRYPOINT ["/bin/bash", "-c", "vps-es start"]
