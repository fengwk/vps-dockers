FROM fengwk/vps-tailscale-server

ADD ["apache-maven-3.9.6-bin.tar.gz", "/usr/local"]
COPY ["openjdk-17.0.2_linux-x64_bin.tar.gz.*", "/usr/local/"]

RUN set -uex \
    && cat /usr/local/openjdk-17.0.2_linux-x64_bin.tar.gz.* | tar -xzvC /usr/local \
    && mv /usr/local/apache-maven-* /usr/local/maven \
    && mv /usr/local/jdk-17* /usr/local/jdk17 \
    && ln -s /usr/local/jdk17/bin/* /usr/local/bin \
    && ln -s /usr/local/maven/bin/* /usr/local/bin

COPY ["vps-app", "/usr/local/bin"]

ENTRYPOINT ["/bin/bash", "-c", "vps-app start"]
