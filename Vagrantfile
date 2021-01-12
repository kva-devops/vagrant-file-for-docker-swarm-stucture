ANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.ssh.insert_key = false
  # config system memory for virtual host
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "512"]
  end

  # config master host
  config.vm.define "swarmmaster" do |app|
    app.vm.hostname = "swarmmaster"
    # choose image https://app.vagrantup.com/boxes/search
    app.vm.box = "generic/centos7"
    app.vm.network "private_network", ip: "192.168.50.4", virtualbox__intnet: true
    # config for public network (Internet)
    app.vm.network :public_network
  end

  #worker1 
  config.vm.define "swarmworker1" do |app|
    app.vm.hostname = "swarmwork1er"
    app.vm.box = "generic/centos7"
    app.vm.network "private_network", ip: "192.168.50.5", virtualbox__intnet: true
    app.vm.network :public_network
  end
  #worker2
  config.vm.define "swarmworker2" do |app|
    app.vm.hostname = "swarmworker2"
    app.vm.box = "generic/centos7"
    app.vm.network "private_network", ip: "192.168.50.6", virtualbox__intnet: true
    app.vm.network :public_network
  end
end
