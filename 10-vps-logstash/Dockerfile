FROM fengwk/vps-tailscale-server

RUN set -uex \
    && useradd -m logstash

COPY ["logstash-8.12.2-linux-x86_64.tar.gz.*", "/home/logstash/"]

RUN set -uex \
    && cat /home/logstash/logstash-8.12.2-linux-x86_64.tar.gz.* | tar -xzvC /home/logstash \
    && rm -f /home/logstash/logstash-8.12.2-linux-x86_64.tar.gz.* \
    && mv /home/logstash/logstash-8.12.2 /home/logstash/logstash \
    && chown -R logstash:logstash /home/logstash

COPY ["vps-logstash", "/usr/local/bin"]
COPY ["logstash-app-log.conf", "/home/logstash"]

WORKDIR /home/logstash

ENTRYPOINT ["/bin/bash", "-c", "vps-logstash start"]
