FROM fengwk/vps-tailscale-server

RUN mkdir -p /var/lib/headscale \
    && touch /var/lib/headscale/db.sqllite \
    && mkdir -p /var/run/headscale

# 目前alpha版本有offline状态管理问题
# https://github.com/juanfont/headscale/pull/1564
# COPY ["headscale_0.23.0-alpha1_linux_amd64", "/usr/sbin/headscale"]
COPY ["headscale_0.22.3_linux_amd64", "/usr/local/bin/headscale"]
# COPY ["config.yaml", "/etc/headscale/config.yaml"]
COPY ["vps-headscale", "/usr/sbin/vps-headscale"]

ENTRYPOINT ["/bin/bash", "-c", "vps-headscale start"]
