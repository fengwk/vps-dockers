FROM fengwk/vps-tailscale-server

RUN useradd -m jupyter

RUN pip3 config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple \
    && pip3 install jupyter

# c语言内核
RUN pip3 install jupyter-c-kernel \
    && install_c_kernel \
    && mv /root/.local/share/jupyter/kernels/c /usr/local/share/jupyter/kernels

# nodejs内核
RUN dnf update -y \
    && dnf install -y nodejs \
    && npm install -g ijavascript \
    && ijsinstall \
    && mv /root/.local/share/jupyter/kernels/javascript /usr/local/share/jupyter/kernels

# go内核
RUN dnf install -y go \
    && go env -w GO111MODULE=on \
    && go env -w  GOPROXY=https://goproxy.cn \
    && go install github.com/gopherdata/gophernotes@v0.7.5 \
    && mkdir -p /usr/local/share/jupyter/kernels/gophernotes \
    && cp "$(go env GOPATH)"/pkg/mod/github.com/gopherdata/gophernotes@v0.7.5/kernel/* /usr/local/share/jupyter/kernels/gophernotes \
    && chmod +w /usr/local/share/jupyter/kernels/gophernotes/kernel.json \
    && cp "$(go env GOPATH)"/bin/gophernotes /usr/local/bin/gophernotes \
    && sed "s|gophernotes|/usr/local/bin/gophernotes|" < /usr/local/share/jupyter/kernels/gophernotes/kernel.json.in > /usr/local/share/jupyter/kernels/gophernotes/kernel.json

COPY ["vps-jupyter-notebook", "/usr/local/bin"]

ENTRYPOINT ["/bin/bash", "-c", "vps-jupyter-notebook start"]
