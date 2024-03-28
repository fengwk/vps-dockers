FROM fengwk/vps-tailscale

RUN set -uex \
    && useradd -m filebeat

ADD ["filebeat-8.12.2-linux-x86_64.tar.gz", "/home/filebeat"]

RUN set -uex \
    && dnf update -y \
    && dnf install -y openssh-server \
    && ssh-keygen -t rsa -N '' -f /etc/ssh/ssh_host_rsa_key \
    && ssh-keygen -t dsa -N '' -f /etc/ssh/ssh_host_dsa_key \
    && ssh-keygen -t ecdsa -N '' -f /etc/ssh/ssh_host_ecdsa_key \
    && ssh-keygen -t ed25519 -N '' -f /etc/ssh/ssh_host_ed25519_key \
    && mv /home/filebeat/filebeat-8.12.2-linux-x86_64 /home/filebeat/filebeat \
    && chown -Rf filebeat:filebeat /home/filebeat

COPY ["vps-tailscale-server", "/usr/local/bin"]

CMD ["/bin/bash"]
