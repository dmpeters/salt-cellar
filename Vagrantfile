#!/usr/bin/env ruby

Vagrant.configure("2") do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.network :private_network, ip: "192.168.33.10"

  config.vm.provision :salt do |salt|
    salt.run_highstate = true
    salt.minion_config = "./minion/minion"
    salt.minion_key = "./minion/minion.pem"
    salt.minion_pub = "./minion/minion.pub"
  end

end
