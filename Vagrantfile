Vagrant.configure(2) do |config|
  config.vm.box         = "ubuntu/trusty64"
  config.vm.hostname    = "deep-learning-vm"
  config.vm.box_version = "20160406.0.0"

  config.vm.provider "virtualbox" do |v|
    v.cpus   = 4
    v.memory = 4096

    # Explicitly setting the name, otherwise the default looks like : 
    # deep-learning-vm_default_1462004539...
    v.name   = "deep-learning-vm"
  end

  config.vm.provision :shell, path: 'setup.sh', keep_color: true

end

