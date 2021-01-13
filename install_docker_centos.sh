# update repo and install docker (Centos). After execute this file enter this command: sudo chmod u+x filename.sh
#!/bin/bash
sudo yum update -y
sudo yum remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine

sudo yum install -y yum-utils

sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

sudo yum install docker-ce -y
sudo yum install docker-ce-cli -y
sudo yum install containerd.io

sudo systemctl start docker
sudo systemctl enable docker

sudo usermod -aG docker vagrant

sudo docker run hello-world
