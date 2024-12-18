FROM fengwk/vps-tailscale-server

RUN set -uex \
    && mkdir -p /var/lib/headscale \
    && mkdir -p /var/log/headscale \
    && touch /var/lib/headscale/db.sqllite \
    && mkdir -p /var/run/headscale

# 目前alpha版本有offline状态管理问题
# https://github.com/juanfont/headscale/pull/1564
COPY ["headscale_0.23.0_linux_amd64", "/usr/local/bin/headscale"]
# COPY ["headscale_0.22.3_linux_amd64", "/usr/local/bin/headscale"]
# COPY ["config.yaml", "/etc/headscale/config.yaml"]
COPY ["vps-headscale", "/usr/local/bin"]

ENTRYPOINT ["/bin/bash", "-c", "vps-headscale start"]
