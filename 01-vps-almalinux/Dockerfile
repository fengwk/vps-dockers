FROM almalinux:9

# 安装基础的运维工具
RUN echo -e "\n\nalias ll='ls -lh --color=auto'\nalias ls='ls --color=auto'" >> /root/.bashrc \
    && dnf update -y \
    && dnf install -y epel-release \
    && dnf install -y iproute procps-ng neovim git gcc make which bind-utils python pip inotify-tools \
    && ln -s /bin/nvim /bin/vim \
    && install -m 700 -d /root/.ssh

# nvim配置
COPY ["nvim", "/root/.config/nvim"]
# vps-almalinux脚本
COPY ["vps-almalinux", "/usr/sbin/vps-almalinux"]

CMD ["/bin/bash"]
