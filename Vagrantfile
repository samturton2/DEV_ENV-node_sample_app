# Install required plugins
required_plugins = ["vagrant-hostsupdater"]
required_plugins.each do |plugin|
    exec "vagrant plugin install #{plugin}" unless Vagrant.has_plugin? plugin
end

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.network "private_network", ip: "162.170.12.98"
  # config.vm.hostname = "www.node-app-vm.local"

  # Sync the app folder
  # config.vm.synced_folder "path/origin/folder", "path/to/destination/folder"
  config.vm.synced_folder "app", "/app"

  # run the provision script
  config.vm.provision "shell", path: "environment/provision.sh"

end