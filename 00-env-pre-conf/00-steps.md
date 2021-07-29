00-steps
========
with https://github.com/rdbreak/rhce8env

###
```
rhce8env$ sftp vagrant@192.168.55.200   # pass:vagrant , put ssh key on control

sudo -i
dnf install git
eval $(ssh-agent -s)                                 #
ssh-add /home/vagrant/key.pub                        # now repo is not private and for cloning it is not necessary
git clone git@github.com:michten/ansible-learning
echo 'export PATH+=:/usr/local/bin' >> .bashrc       # in this enviroment ansible is bundled, but root's PATH is missing ansible path
```
