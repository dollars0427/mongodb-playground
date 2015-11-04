# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "14.04"

  config.vm.host_name = "mongodb-playground"

  config.vm.network :private_network, ip: "192.168.33.10"

  config.vm.provider "virtualbox" do |vb|
    vb.customize [ "modifyvm", :id, "--memory", 1024]
    vb.customize [ "modifyvm", :id, "--name", "mongodb"]
  end

  config.vm.provision "chef_solo" do |chef|
  chef.cookbooks_path = ["cookbooks"]
  chef.add_recipe "mongodb-playground::default"
  end

end
