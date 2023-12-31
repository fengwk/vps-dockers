FROM fengwk/vps-tailscale-server

ADD ["redis-stable.tar.gz", "/usr/local/src"]

RUN set -uex \
    && dnf update -y \
    && dnf install -y tcl \
    && mv /usr/local/src/redis-stable /usr/local/src/redis \
    && cd /usr/local/src/redis \
    && make install \
    && make test

# COPY ["redis.conf", "/etc/redis.conf"]

COPY ["vps-redis", "/usr/sbin/vps-redis"]

ENTRYPOINT ["/bin/bash", "-c", "vps-redis start"]
