<h1>slurm_deploy</h1>

<b>Deploy a test slurm master server and client from source</b> on common linux distributions either in provided Vagrant environ or your own...

CURRENTLY TESTED WITH ALMALINUX 9 

other RHEL family (=> 8) distributions could be made to work without much further work, but this is yet to be done

<b>USE AT OWN RISK</b>


<b>Only same-host master+client works at the moment. This will be changed in due course.</b>


Included here:
- ``Vagrantfile`` for testing and inventory
- default master with client on same host
- modify ``Vagrantfile`` if you wish to have a seperate client machine
- slurm_deploy ansible role to deploy against vagrant or other target hosts

Requirements:
- ``ansible``
- ``ansible.posix`` module (```ansible-galaxy collection install ansible.posix```)
- ``vagrant`` (if using it for testing)

TODO:
- general improvements
- fix mysql support
- enable vagrant second disk for db
- improve cuda install
- logrotate setup
