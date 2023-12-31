FROM fengwk/vps-tailscale

# mysql client
RUN pip install -U mycli

# redis client
ADD ["redis-stable.tar.gz", "/usr/local/src"]
RUN set -uex \
    && dnf update -y \
    && dnf install -y tcl \
    && mv /usr/local/src/redis-stable /usr/local/src/redis \
    && cd /usr/local/src/redis \
    && make install \
    && make test

CMD ["/bin/bash", "-c", "vps-tailscale start-and-wait"]
