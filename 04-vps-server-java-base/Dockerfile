FROM fengwk/vps-tailscale-server

ADD ["apache-maven-3.9.6-bin.tar.gz", "/usr/local"]

RUN set -uex \
    && mv /usr/local/apache-maven-* /usr/local/maven \
    && ln -s /usr/local/maven/bin/* /usr/local/bin

CMD ["/bin/bash"]
