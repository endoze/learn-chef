# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.hostname = "learn-chef-berkshelf"
  config.vm.box = "berkshelf-vm"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.network :private_network, ip: "33.33.33.10"
  config.berkshelf.enabled = true
  config.vm.provision :chef_solo do |chef|
    chef.json = { }

    chef.run_list = [
        "recipe[learn-chef::default]"
    ]
  end
end
