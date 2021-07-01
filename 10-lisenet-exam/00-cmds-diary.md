Ansible Sample Exam for RHCE EX294 and EX407
============================================
https://www.lisenet.com/2019/ansible-sample-exam-for-ex294/

### tmux + vim configuration


## Task 1: Ansible Installation and Configuration
### create local user on control
```bash
useradd -m -u 1111 -s /bin/bash automation
passwd automation
```
### create ansible.cfg and inventory


## Task 2: Ad-Hoc Commands
check adhoc.sh  

### create key
```
ssh-keygen -o -a 100 -t ed25519
```
For playbook, use openssh_keypair module  

### adhoc
- Types of quotes are very important in -a as outside use always double quotes !!!
- Copy module: NO 'state' parameter !!!
- options: -u -k    -b --become-method --become-user -K


## Task 3: File Content
check motd.yml  


## task 4: Configure SSH Server
check sshd.yml  


## Task 5: Ansible Vault
check secret.yml and vault_key  

- first create file with password
#### create vault
* basic
```
ansible_vault create --vault-id=task6@vault_key secret.yml    # basic, seem be the best with ID name (task6)
ansible_vault create --vault-id=task6@prompt secret.yml       # basic with ID, prompt for pass
ansible_vault create --vault-id=value_key secret.yml          # no ID, path to file with password
              encrypt
              view
              edit
              rekey
              encrypt_string
```

* better
Available options in ansible.cfg:  
- vault_identity         ??? untested
- vault_identity_list    list of pairs vault_id@path/to/pass-file separated by comma ,
- vault_password_file    ??? untested, probably will use this pass everytime
- vault_id_match         Unless this is set to true, ansible will try every pass-file from list above, even from another vault_id

ansible.cfg in [defaults] section may contain e.g lines:  
```
vault_identity_list=task6@vault_key , tst@v/key2  
vault_id_match=true  
```
then playbook may be run without --vault-id or --vault-password-file (but those still could be used to overwrite)
