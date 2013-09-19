# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # vagrant docs: vagrantup.com.

  config.vm.box = "salty-wheezy64"
  config.vm.box_url = "http://goo.gl/v6Eme3"

  # config.vm.network :forwarded_port, guest: 80, host: 8080
  config.vm.network :private_network, ip: "172.16.42.10"
  # config.vm.network :public_network

  # config.vm.synced_folder "salt/roots/", "/srv/salt/"
  config.vm.synced_folder "salt/roots/", "/srv/"

  config.vm.provision :salt do |salt|
    salt.minion_config = "salt/minion"
    salt.run_highstate = true
    salt.verbose = true
  end

end
