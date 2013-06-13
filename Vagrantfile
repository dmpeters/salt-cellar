# -*- mode: ruby; -*-
# vi: set ft=ruby :

domain = 'salt-cellar.com'

Vagrant.configure("2") do |config|
  
  config.vm.define :master do |master|
    master.vm.box = "precise64"
    master.vm.box_url = "http://files.vagrantup.com/precise64.box"
    master.vm.hostname = "master.#{domain}"
    master.vm.network :forwarded_port, guest: 80, host: 8080, auto_correct: true
    master.vm.synced_folder "salt/roots/", "/srv/"

    master.vm.provision :salt do |salt|
      # salt output
      salt.verbose = true

      # install type (stable | git | daily)
      salt.install_type = "stable"

      # install salt-master
      salt.install_master = true

      # configs
      salt.master_config = "salt/master"
      salt.minion_config = "salt/minion"

      # keys
      salt.master_key = "salt/key/master.pem"
      salt.master_pub = "salt/key/master.pub"
      salt.minion_key = "salt/key/minion.pem"
      salt.minion_pub = "salt/key/minion.pub"

      # seed minion keys
      salt.seed_master = {minion1: "salt/key/minion.pub",
                          minion2: "salt/key/minion.pub"}

      salt.accept_keys = true
      salt.run_highstate = true
      salt.always_install = true

    end
  end

  config.vm.define :minion1 do |minion|
    minion.vm.box = "precise64"
    minion.vm.box_url = "http://files.vagrantup.com/precise64.box"
    minion.vm.hostname = "minion1.#{domain}"
    minion.vm.network :forwarded_port, guest: 80, host: 8080, auto_correct: true
    minion.vm.provision :salt do |salt|
      salt.minion_config = "salt/minion"
      salt.minion_key = "salt/key/minion.pem"
      salt.minion_pub = "salt/key/minion.pub"
      salt.verbose = true
    end
  end

  config.vm.define :minion2 do |minion|
    minion.vm.box = "precise64"
    minion.vm.box_url = "http://files.vagrantup.com/precise64.box"
    minion.vm.hostname = "minion2.#{domain}"
    minion.vm.network :forwarded_port, guest: 80, host: 8080, auto_correct: true
    minion.vm.provision :salt do |salt|
      salt.minion_config = "salt/minion"
      salt.minion_key = "salt/key/minion.pem"
      salt.minion_pub = "salt/key/minion.pub"
      salt.verbose = true
    end
  end

end