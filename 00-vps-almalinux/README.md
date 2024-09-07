## VPS Alamlinux

基于Alamlinux:9构建的基础镜像，包含一些运维必备的基础工具。

安装.shh中的密钥：

```
docker run -d \
    -v /path/to/local/file:/root/.ssh/authorized_keys -o chmod=600 \
    -v /path/to/local/file:/root/.ssh/id_rsa -o chmod=600 \
    -v /path/to/local/file:/root/.ssh/id_rsa.pub -o chmod=644 \
    vps-almalinux
```
