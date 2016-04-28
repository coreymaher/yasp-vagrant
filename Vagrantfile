# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
    config.vm.box = "ubuntu/trusty64"

    config.vm.provider "virtualbox" do |v|
      v.memory = 2048
    end

    config.vm.network "forwarded_port", guest: 80, host: 8080
    config.vm.network "public_network"

    config.vm.provision "shell", path: "provision.sh"

    config.vm.provision "docker" do |d|
        d.pull_images "postgres:latest"
        d.pull_images "redis:latest"
        d.pull_images "cassandra:latest"

        d.run "yasp/yasp",
            args: "-v '/home/yasp:/usr/src/yasp' --net=host -e FRONTEND_PORT=80 -e ROLE=web --name yasp"

        d.run "postgres",
            args: "--net=host"
        d.run "redis",
            args: "--net=host"
        d.run "cassandra",
            args: "--net=host"
    end
end
