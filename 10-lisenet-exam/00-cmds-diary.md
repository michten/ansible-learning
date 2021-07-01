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

### create key
```
ssh-keygen -o -a 100 -t ed25519
```

### adhoc
- Types of quotes are very important in -a as outside use always double quotes !!!
- Copy module: NO 'state' parameter !!!
