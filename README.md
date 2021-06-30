ansible-learning
================

My Ansible learning stuff  
Should be used with rdbreak rhce8env repo (https://github.com/rdbreak/rhce8env) or with vagrant box from Vagrantfile of this repo. 

## 00-env-pre-conf
Should be run as root. Add '/usr/local/bin' to root's .bash_profile first.  
This play will provide additional configuration to all vagrant hosts:  
- set 'LANG_C' 
- vim system-wide conf  
- tmux system-wide conf  
- create paswordless ssh connection for root between control and nodes
