FROM fengwk/vps-server-jdk17

RUN set -uex \
    && useradd -m app

COPY ["vps-app", "/usr/local/bin"]

ENV APP_RUNTIME_HOME=/home/app

WORKDIR /home/app

ENTRYPOINT ["/bin/bash", "-c", "vps-app start"]
