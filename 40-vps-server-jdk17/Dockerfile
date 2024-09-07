FROM fengwk/vps-server-java-base

COPY ["openlogic-openjdk-17.0.10+7-linux-x64.tar.gz.*", "/usr/local/"]

RUN set -uex \
    && cat /usr/local/openlogic-openjdk-17.0.10+7-linux-x64.tar.gz.* | tar -xzvC /usr/local \
    && rm -f /usr/local/openlogic-openjdk-17.0.10+7-linux-x64.tar.gz.* \
    && mv /usr/local/openlogic-openjdk-17.0.10+7-linux-x64 /usr/local/jdk17 \
    && ln -s /usr/local/jdk17/bin/* /usr/local/bin

ENV JAVA_HOME=/usr/local/jdk17

CMD ["/usr/bin/bash"]
