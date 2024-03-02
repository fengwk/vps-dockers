FROM fengwk/vps-tailscale-server

RUN useradd -m jupyter

RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple \
    && pip install jupyter

COPY ["vps-jupyter-notebook", "/usr/local/bin"]

ENTRYPOINT ["/bin/bash", "-c", "vps-jupyter-notebook start"]
