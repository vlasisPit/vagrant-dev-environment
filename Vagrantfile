# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  # config.vm.box_url is necessary. Otherwise we receive a 404 not found error
  # The problem is that by default Vagrant searches for boxes in https://atlas.hashicorp.com
  config.vm.box = "debian/stretch64"
  config.vm.box_url = "https://vagrantcloud.com/debian/boxes/stretch64/versions/9.2.0/providers/virtualbox.box"
  config.vm.box_download_insecure = true

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  config.vm.network "forwarded_port", guest: 80, host:9090
  
  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network "private_network", ip: "192.168.33.10"
  
  # fix "rsync" could not be found on your PATH. Make sure that rsync
  # is properly installed on your system and available on the PATH. Error
  config.vm.synced_folder ".", "/vagrant", type: "virtualbox"
  
  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  config.vm.synced_folder "scripts/", "/scripts"
  config.vm.synced_folder "applications/", "/applications"
  config.vm.synced_folder "redis-cluster/", "/redis-cluster"
    
  config.vm.provider "virtualbox" do |v|
	cpu_exec_cap = 80
  	mem = `wmic computersystem Get TotalPhysicalMemory`.split[1].to_i * 3 / 8 / 1024 / 1024
  	cpus = `wmic cpu get NumberOfLogicalProcessors`.split[1].to_i 

	puts "Provisioning VM with #{cpus} CPU's (at #{cpu_exec_cap}%) and #{mem/1024} GB RAM."
  end

  config.vm.provision "shell", path: "scripts/install-java.sh"
  config.vm.provision "shell", path: "scripts/install-scalaSbt.sh"
  config.vm.provision "shell", path: "scripts/install-spark.sh"
  config.vm.provision "shell", path: "scripts/install-redis.sh"
  config.vm.provision "shell", path: "scripts/install-docker.sh"
  config.vm.provision "shell", path: "scripts/env.sh"
  
end
