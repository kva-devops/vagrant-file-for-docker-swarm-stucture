# update repo and install docker (Centos). After execute this file enter this command: sudo chmod u+x filename.sh
#!/bin/bash
sudo yum update -y

sudo yum install git -y

cd ~
git clone https://github.com/kva-devops/vagrant-file-for-docker-swarm-stucture.git

