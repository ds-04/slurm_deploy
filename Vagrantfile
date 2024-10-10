# -*- mode: ruby -*-
# vi: set ft=ruby :

VIMAGE = "generic/alma9"


Vagrant.configure("2") do |config|
config.vm.provider "virtualbox" do |vb|
  vb.memory = "4096"
  vb.cpus= "2"
end
config.vm.define "slurmMaster" do |slurmMaster|
  slurmMaster.vm.box = VIMAGE
  slurmMaster.vm.network "private_network", ip: "192.168.56.66"#Set static IP
  config.ssh.insert_key = false
  slurmMaster.vm.provision "ansible" do |ansible|
    ansible.playbook = "playbook.yml"
    ansible.inventory_path  = "hosts.ini"
    ansible.limit = "slurm_master"
    ansible.verbose ="vv"
    ansible.extra_vars = { ansible_python_interpreter: "auto" }
    #ansible.extra_vars = { ansible_python_interpreter:"/usr/bin/python3" } #if forcing python3
  end
end
end
