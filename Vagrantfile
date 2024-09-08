Vagrant.configure("2") do |config|
  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  config.hostmanager.ignore_private_ip = false
  config.hostmanager.include_offline = true
  
  config.vm.define "controllnode" do |controllnode|
    controllnode.vm.box = "ubuntu/jammy64"
    controllnode.vm.hostname = "controll-node"
    controllnode.vm.network "private_network", ip: "192.168.56.30"
    controllnode.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = "1"
    end
    controllnode.vm.provision "shell", inline: <<-SHELL
      apt update
      apt upgrade -y
    SHELL
  end
  
  config.vm.define "node1" do |node1|
    node1.vm.box = "generic/centos8"
    node1.vm.hostname = "node1"
    node1.vm.network "private_network", ip: "192.168.56.31"
    node1.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = "1"
    end
    node1.vm.provision "shell", inline: <<-SHELL
      dnf update -y
    SHELL
  end
  
  config.vm.define "node2" do |node2|
    node2.vm.box = "generic/centos8"
    node2.vm.hostname = "node2"
    node2.vm.network "private_network", ip: "192.168.56.32"
    node2.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = "1"
    end
    node2.vm.provision "shell", inline: <<-SHELL
      dnf update -y
    SHELL
  end

  config.vm.define "node3" do |node3|
    node3.vm.box = "generic/centos8"
    node3.vm.hostname = "node3"
    node3.vm.network "private_network", ip: "192.168.56.33"
    node3.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = "1"
    end
    node3.vm.provision "shell", inline: <<-SHELL
      dnf update -y
    SHELL
  end
end
