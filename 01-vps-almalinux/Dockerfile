FROM almalinux:9

# 安装基础的运维工具
RUN set -uex \
    && echo -e "\n\nalias ll='ls -lh --color=auto'\nalias ls='ls --color=auto'" >> /root/.bashrc \
    && dnf update -y \
    && dnf install -y epel-release \
    && dnf install -y iproute procps-ng neovim git gcc make which bind-utils python pip inotify-tools \
    && ln -s /bin/nvim /bin/vim \
    && pip install -i https://pypi.tuna.tsinghua.edu.cn/simple --upgrade pip \
    && install -m 700 -d /root/.ssh \
    # 获取github.com的ssh-key添加到known_hosts中防止git命令使用过程中进行询问
    && ssh-keyscan github.com >> /root/.ssh/known_hosts

# nvim配置
COPY ["nvim", "/root/.config/nvim"]
# vps-almalinux脚本
COPY ["vps-almalinux", "/usr/local/bin"]

WORKDIR /root

CMD ["/bin/bash"]
