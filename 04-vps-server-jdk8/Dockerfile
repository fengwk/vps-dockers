FROM fengwk/vps-tailscale-server

ADD ["apache-maven-3.9.6-bin.tar.gz", "/usr/local"]
COPY ["openlogic-openjdk-8u402-b06-linux-x64.tar.gz.*", "/usr/local/"]

RUN set -uex \
    && cat /usr/local/openlogic-openjdk-8u402-b06-linux-x64.tar.gz.* | tar -xzvC /usr/local \
    && rm -f /usr/local/openlogic-openjdk-8u402-b06-linux-x64.tar.gz.* \
    && mv /usr/local/apache-maven-* /usr/local/maven \
    && mv /usr/local/openlogic-openjdk-8u402-b06-linux-x64 /usr/local/jdk8 \
    && ln -s /usr/local/jdk8/bin/* /usr/local/bin \
    && ln -s /usr/local/maven/bin/* /usr/local/bin

ENV JAVA_HOME=/usr/local/jdk8

CMD ["/bin/bash"]
