lisenet ex294
=============
https://www.lisenet.com/2019/ansible-sample-exam-for-ex294/

# pre env conf
## todo:
1. langC for root, skel, vagrant, user  \
2. vim ()                                | (all) control, nodes, repo       
3. tmux                                 /


4. passwordless ssh for root: from control to:       nodes, repo
5. install git rhel-system-roles tmux

## 

















# main tasks

## ansible.cfg 
[defaults]
inventory=inventories/inventory-rhce8env.yml
forks=10

[privilege_escalation]
become=false



ansible 
