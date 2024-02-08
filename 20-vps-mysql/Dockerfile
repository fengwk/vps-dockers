FROM fengwk/vps-tailscale-server

COPY ["mysql-5.7.44-linux-glibc2.12-x86_64.tar.gz.*", "/usr/local/"]

RUN set -uex \
    && cat /usr/local/mysql-5.7.44-linux-glibc2.12-x86_64.tar.gz.* | tar -xzvC /usr/local \
    && rm -f /usr/local/mysql-5.7.44-linux-glibc2.12-x86_64.tar.gz.* \
    && mv /usr/local/mysql-5.7.44-linux-glibc2.12-x86_64 /usr/local/mysql \
    && useradd -m mysql \
    && ln -s /usr/local/mysql/bin/* /usr/local/bin/

RUN set -uex \
    && dnf update -y \
    # mysqld dependencies
    && dnf install -y libaio numactl libxcrypt-compat \
    # mysql dependencies
    && dnf install -y ncurses-compat-libs

# 配置文件和初始化脚本通过-v挂载
# COPY ["my.cnf", "/etc/my.cnf"]
# COPY ["vps-mysql-init.sql", "/etc/vps-mysql-init.sql"]
COPY ["vps-mysql", "/usr/local/bin"]

ENTRYPOINT ["/bin/bash", "-c", "vps-mysql start"]
