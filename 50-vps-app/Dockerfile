FROM fengwk/vps-server-jdk17

COPY ["vps-app", "/usr/local/bin"]

ENV APP_RUNTIME_HOME=/usr/local/app-runtime

ENTRYPOINT ["/bin/bash", "-c", "vps-app start"]
