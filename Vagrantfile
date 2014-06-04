# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.require_version '1.6.3'
# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  if Vagrant.has_plugin?("vagrant-proxyconf")
    config.proxy.http     = "http://proxy-src.research.ge.com:8080/"
    config.proxy.https    = "https://proxy-src.research.ge.com:8080/"
    config.proxy.no_proxy = "localhost,127.0.0.1,.example.com"
  end


  config.vm.box = "opscode-ubuntu-12.04"
  config.vm.box_url = "https://opscode-vm.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04_chef-11.2.0.box"
  config.vm.network :forwarded_port, guest: 80, host: 8080
  config.vm.synced_folder "shared", "/shared"

  config.vm.provision :chef_client do |chef|
    chef.chef_server_url = ENV['KNIFE_CHEF_SERVER']
    chef.validation_key_path = "#{ENV['KNIFE_VALIDATION_KEY_FOLDER']}/#{ENV['OPSCODE_ORGNAME']}-validator.pem"
    chef.validation_client_name = "#{ENV['OPSCODE_ORGNAME']}-validator"
    chef.node_name = "#{ENV['OPSCODE_USER']}-vagrant"
    chef.run_list = [
      'motd',
      'minitest-handler'
    ]
  end
end
