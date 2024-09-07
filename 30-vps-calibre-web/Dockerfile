FROM fengwk/vps-tailscale-server

RUN set -uex \
    && pip install --upgrade -i https://pypi.tuna.tsinghua.edu.cn/simple pip \
    && pip install -i https://pypi.tuna.tsinghua.edu.cn/simple calibreweb

# COPY ["metadata.db", "/usr/local/tmp/metadata.db"]
COPY ["vps-calibre-web", "/usr/local/bin"]

ENTRYPOINT ["/bin/bash", "-c", "vps-calibre-web start"]
