FROM fengwk/vps-tailscale

ADD ["filebeat-8.12.2-linux-x86_64.tar.gz", "/usr/local"]

RUN set -uex \
    && dnf update -y \
    && dnf install -y openssh-server \
    && ssh-keygen -t rsa -N '' -f /etc/ssh/ssh_host_rsa_key \
    && ssh-keygen -t dsa -N '' -f /etc/ssh/ssh_host_dsa_key \
    && ssh-keygen -t ecdsa -N '' -f /etc/ssh/ssh_host_ecdsa_key \
    && ssh-keygen -t ed25519 -N '' -f /etc/ssh/ssh_host_ed25519_key \
    && mv /usr/local/filebeat-8.12.2-linux-x86_64 /usr/local/filebeat \
    && ln -s /usr/local/filebeat/filebeat /usr/local/bin

COPY ["vps-tailscale-server", "/usr/local/bin"]

CMD ["/bin/bash"]
