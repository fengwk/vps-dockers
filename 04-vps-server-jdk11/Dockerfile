FROM fengwk/vps-tailscale-server

ADD ["apache-maven-3.9.6-bin.tar.gz", "/usr/local"]
COPY ["openlogic-openjdk-11.0.22+7-linux-x64.tar.gz.*", "/usr/local/"]

RUN set -uex \
    && cat /usr/local/openlogic-openjdk-11.0.22+7-linux-x64.tar.gz.* | tar -xzvC /usr/local \
    && rm -f /usr/local/openlogic-openjdk-11.0.22+7-linux-x64.tar.gz.* \
    && mv /usr/local/apache-maven-* /usr/local/maven \
    && mv /usr/local/openlogic-openjdk-11.0.22+7-linux-x64 /usr/local/jdk11 \
    && ln -s /usr/local/jdk11/bin/* /usr/local/bin \
    && ln -s /usr/local/maven/bin/* /usr/local/bin

ENV JAVA_HOME=/usr/local/jdk11

CMD ["/bin/bash"]
