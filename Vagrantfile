Vagrant.configure("2") do |config|
  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  config.hostmanager.ignore_private_ip = false
  config.hostmanager.include_offline = true
  
  config.vm.define "controllnode" do |controllnode|
    controllnode.vm.box = "ubuntu/jammy64"
    controllnode.vm.hostname = "controll-node"
    controllnode.vm.synced_folder "$(dirname $0)/shared", "/shared"#, disabled: true
    controllnode.vm.network "private_network", ip: "192.168.56.30"
    controllnode.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = "1"
    end
    controllnode.vm.provision "shell", path: "setup.sh"
  end
  
  config.vm.define "web01" do |web01|
    web01.vm.box = "eurolinux-vagrant/centos-stream-9"
    web01.vm.hostname = "web01"
    web01.vm.network "private_network", ip: "192.168.56.31"
    web01.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = "1"
    end
    web01.vm.provision "shell", inline: <<-SHELL
      dnf update -y
    SHELL
  end
  
  config.vm.define "web02" do |web02|
    web02.vm.box = "eurolinux-vagrant/centos-stream-9"
    web02.vm.hostname = "web02"
    web02.vm.network "private_network", ip: "192.168.56.32"
    web02.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = "1"
    end
    web02.vm.provision "shell", inline: <<-SHELL
      dnf update -y
    SHELL
  end

  config.vm.define "db" do |db|
    db.vm.box = "eurolinux-vagrant/centos-stream-9"
    db.vm.hostname = "db"
    db.vm.network "private_network", ip: "192.168.56.33"
    db.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = "1"
    end
    db.vm.provision "shell", inline: <<-SHELL
      dnf update -y
    SHELL
  end
end
