#!/bin/bash
#
# check:
# ansible all -m ping -u root

ansible all -m user -a 'name=automation state=present shell=/bin/bash' -u root
# quotes are important here. In -a outside have to be double quotes!!!
ansible all -m authorized_key -a "user=automation key={{ lookup('file', '/home/automation/.ssh/id_ed25519.pub') }} state=present comment=automation2nodes" -u root
ansible all -m copy -a "content='automation ALL=(ALL:ALL) NOPASSWD: ALL' dest=/etc/sudoers.d/automation" -u root
