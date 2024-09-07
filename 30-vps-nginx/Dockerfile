FROM fengwk/vps-tailscale-server

ADD ["nginx-1.24.0.tar.gz", "/usr/local/src"]

RUN set -uex \
    && mv /usr/local/src/nginx-1.24.0 /usr/local/src/nginx \
    # && dnf update -y \
    # HTTP rewrite module requires the PCRE library
    && dnf install -y pcre pcre-devel \
    # HTTP gzip module requires the zlib library
    && dnf install -y zlib zlib-devel \
    # ngx_http_ssl_module
    && dnf install -y openssl openssl-devel \
    # cd
    && cd /usr/local/src/nginx \
    # configure & build install
    && ./configure --prefix=/usr/local/nginx --conf-path=/etc/nginx/nginx.conf --sbin-path=/usr/local/bin --pid-path=/usr/local/nginx/nginx.pid --with-http_ssl_module --with-http_v2_module --with-stream \
    && make build install

COPY ["vps-nginx", "/usr/local/bin"]

ENTRYPOINT ["/bin/bash", "-c", "vps-nginx start"]
