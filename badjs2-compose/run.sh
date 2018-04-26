#!/bin/bash



# 创建目录
mkdir -p /data/badjs
cd /data/badjs

# 下载资源
wget https://download.docker.com/linux/static/stable/x86_64/docker-18.03.0-ce.tgz
sudo curl -L https://github.com/docker/compose/releases/download/1.21.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
wget https://raw.githubusercontent.com/gogoday/badjs-docker/master/badjs2-compose/docker-compose.yml

# 启动资源
tar xzvf docker-18.03.0-ce.tgz
sudo cp docker/* /usr/bin/
sudo dockerd &
sudo chmod +x /usr/local/bin/docker-compose


# 启动服务
docker-compose up -d




