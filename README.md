<h1>slurm_deploy</h1>

<b>Deploy a slurm master server from source</b> on common linux distributions...

CURRENTLY TESTED WITH ALMALINUX 9 

other distributions could be made to work

USE AT OWN RISK

included here:
- vagrant file for testing and inventory
- default master with client on same host
- modify vagrantfile if you wish to have a seperate client machine

requirements:
- ansible
- ansible.posix module (ansible-galaxy collection install ansible.posix)

TODO:
- general improvements
- fix mysql support
- enable vagrant second disk for db
- improve cuda install
- logrotate setup
