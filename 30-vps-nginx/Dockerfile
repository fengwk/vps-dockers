FROM fengwk/vps-tailscale-server

ADD ["nginx-1.24.0.tar.gz", "/usr/local/src"]

RUN useradd -m nginx \
    && mv /usr/local/src/nginx-1.24.0 /usr/local/src/nginx

RUN dnf update -y \
    # HTTP rewrite module requires the PCRE library
    && dnf install -y pcre pcre-devel \
    # HTTP gzip module requires the zlib library
    && dnf install -y zlib zlib-devel \
    # ngx_http_ssl_module
    && dnf install -y openssl openssl-devel \
    # cd
    && cd /usr/local/src/nginx \
    # configure & build install
    && ./configure --user=nginx --group=nginx --prefix=/home/nginx --conf-path=/etc/nginx/nginx.conf --sbin-path=/usr/local/bin --pid-path=/home/nginx/nginx.pid --with-http_ssl_module --with-http_v2_module --with-stream \
    && make build install \
    && chown -R nginx:nginx /home/nginx

COPY ["vps-nginx", "/usr/sbin/vps-nginx"]

ENTRYPOINT ["/bin/bash", "-c", "vps-nginx start"]
