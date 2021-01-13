# update repo and install docker (Centos). After execute this file enter this command: sudo chmod u+x filename.sh
#!/bin/bash
sudo yum update -y

sudo yum install git -y

# change if you need
#git config --global user.name "kva-devops"
#git config --global user.email "kva.devops@gmail.com"

cd ~
git clone https://github.com/kva-devops/vagrant-file-for-docker-swarm-stucture.git

