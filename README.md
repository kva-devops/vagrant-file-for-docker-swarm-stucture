# vagrant-file-for-docker-swarm-stucture

Vagrant file deploy infrastructure for docker swarm 

For starting install this Vagrantfile, you need create directory and place him there.
After this action start command:
 vagrant up

Remember you need to be in the directory with the Vagrantfile

Copy script for install Docker on worker-host:
scp vagrant@master-host-ip:/home/vagrant/vagrant-file-for-docker-swarm-stucture/install_docker_centos.sh install_docker.sh

Remember change before start your script: 
sudo chmod u+x scriptname.sh

After execute create swarm on master-host, paste this on worker-host:
sudo docker swarm join --token [token] your_private_ip:2377

if you can't add worker-host - change firewall on master-host
