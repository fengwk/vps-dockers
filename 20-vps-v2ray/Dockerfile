FROM fengwk/vps-tailscale-server

ADD ["v2ray-linux-64.tar.gz", "/usr/local/lib"]

RUN install -m 755 /usr/local/lib/v2ray-linux-64/v2ray /usr/local/bin/v2ray \
    && install -m 644 /usr/local/lib/v2ray-linux-64/geoip.dat /usr/local/share/geoip.dat \
    && install -m 644 /usr/local/lib/v2ray-linux-64/geosite.dat /usr/local/share/geosite.dat \
    && install -d -m 700 /var/log/v2ray \
    && install -m 600 /dev/null /var/log/v2ray/access.log \
    && install -m 600 /dev/null /var/log/v2ray/error.log

COPY ["vps-v2ray", "/usr/sbin/vps-v2ray"]

ENTRYPOINT ["/bin/bash", "-c", "vps-v2ray start"]
