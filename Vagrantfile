Vagrant.configure("2") do |config|
  ## Chose your base box
  config.vm.box = "precise64"

  ## For local master, mount your file_roots
  config.vm.synced_folder "salt/roots/", "/srv/"

  config.vm.provision :salt do |salt|

    # Config Options
    salt.minion_config = "salt/minion"
    salt.master_config = "salt/master"

    # These are more useful when connecting to a remote master
    # and you want to use pre-seeded keys (already accepted on master)
    ## !! Please do not use these keys in production!
    salt.minion_key = "salt/key/minion.pem"
    salt.minion_pub = "salt/key/minion.pub"

    # Good for multi-vm setups where live minions are expecting
    # existing master
    ## !! Please do not use these keys in production!
    salt.master_key = "salt/key/master.pem"
    salt.master_pub = "salt/key/master.pub"

    # If you need bleeding edge salt
    salt.install_type = "git"
    salt.install_args = "develop"

    # Install a master on this machine
    salt.install_master = true

    # Pre-seed your master (recommended)
    salt.seed_master = {minion: salt.minion_pub}

    # Normally we want to run state.highstate to provision the machine
    salt.run_highstate = true

    # If you are using a master with minion setup, you may accept keys
    # If keys have already been except, it will pass
    # DEPRECATED
    salt.accept_keys = true

    # Default will not install / update salt binaries if they are present
    # Use this option to always install
    salt.always_install = true

    # Gives more output, such as fromt bootstrap script
    salt.verbose = true

  end
end
