VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(2) do |config|
  
  config.vm.box = "ubuntu/trusty64"
  config.vm.network "private_network", ip: "192.168.20.100"
  config.vm.network :forwarded_port, guest: 10083, host: 10083 #Twitter-Express


  config.vm.hostname = "docker-remind"

  config.vm.provision :docker
  config.vm.provision :docker_compose, yml: "/vagrant/docker-compose.yml", rebuild: false, run: "always"


  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
  end

end


