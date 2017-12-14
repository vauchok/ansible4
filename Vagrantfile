Vagrant.configure("2") do |config|
  config.vm.define "server" do |s|
    s.vm.box = "centos-7.4-x86_64-minimal"
    s.vm.hostname = "server"
    s.vm.network :private_network, ip: "192.168.100.100"
    s.vm.network "forwarded_port", guest: 8080, host: 8080
    s.ssh.insert_key = false
    s.vm.provider :virtualbox do |v|
      v.customize [
        "modifyvm", :id,
        "--natdnshostresolver1", "on",
        "--memory", 2048,
        "--name", "server"
        ]
    end
  end
end
