FROM fengwk/vps-almalinux

RUN set -uex \
    # && dnf update -y \
    && dnf install -y 'dnf-command(config-manager)' \
    && dnf config-manager --add-repo https://pkgs.tailscale.com/stable/fedora//tailscale.repo \
    && dnf install -y tailscale iptables \
    && mkdir -p /var/lib/tailscale/tailscaled

COPY ["vps-tailscale", "/usr/local/bin"]

CMD ["/bin/bash"]
