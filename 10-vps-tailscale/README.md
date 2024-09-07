## VPS Tailscale

headscale客户端容器：

- 支持自动连接headscale服务器
- 支持断线重联headscale服务器

配置：

- `HEADSCALE_NS` - 必须，用于指定headscale命名空间
- `HEADSCALE_SSH_HOST` - 必须，用于指定部署headscale的服务器host
- `HEADSCALE_SSH_PORT` - 用于指定部署headscale的服务器的ssh端口，默认为22
- `HEADSCALE_LOGIN_SERVER` - 必须，用于指定部署headscale服务的url地址
- `TAILSCALE_NODE_NAME` - 当前节点名称，默认使用主机名

docker run:

- `--cap-add MKNOD`
- `--cap-add NET_ADMIN`
