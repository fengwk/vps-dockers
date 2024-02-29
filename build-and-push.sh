#!/bin/sh

# 循环遍历子目录
for dir in $(ls -d */ | sort); do
  # 去除目录后缀/和前缀表示顺序的数字
  dir=${dir%/}
  if [ -f "$dir/Dockerfile" ]; then
    # 镜像标签
    image_name="fengwk/$(echo $dir | sed -E 's/^[0-9]+-//g')"
    # 镜像名
    image_tag="latest"
    # 构建镜像
    docker build -t $image_name:$image_tag $dir
    # 登陆docker hub
    docker login -u "$DOCKER_USERNAME" -p "$DOCKER_PASSWORD"
    # 推送镜像
    docker push $image_name:$image_tag
    # 移除所有镜像为下次构建准备空间（解决github构建空间不足问题）
    docker rmi $(docker image ls -aq)
  fi
done
