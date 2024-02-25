FROM fengwk/vps-tailscale-server

RUN set -uex \
    && useradd -m kibana

COPY ["kibana-8.12.2-linux-x86_64.tar.gz.*", "/home/kibana/"]

RUN set -uex \
    && cat /home/kibana/kibana-8.12.2-linux-x86_64.tar.gz.* | tar -xzvC /home/kibana \
    && rm -f /home/kibana/kibana-8.12.2-linux-x86_64.tar.gz.* \
    && mv /home/kibana/kibana-8.12.2 /home/kibana/kibana \
    && chown -R kibana:kibana /home/kibana

COPY ["vps-kibana", "/usr/local/bin"]

WORKDIR /home/kibana

ENTRYPOINT ["/bin/bash", "-c", "vps-kibana start"]
