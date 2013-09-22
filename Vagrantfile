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

    # salt.minion_config = "salt/minion"
    # salt.master_config = "salt/master"
    # salt.minion_key = "salt/key/minion.pem"
    # salt.minion_pub = "salt/key/minion.pub"
    # salt.master_key = "salt/key/master.pem"
    # salt.master_pub = "salt/key/master.pub"
    # salt.install_master = true
    # salt.seed_master = {minion: salt.minion_pub}
    # salt.accept_keys = true
    # salt.always_install = true

    salt.verbose = true
    salt.run_highstate = true
  end

end
