# README

## Prepare environment

create technical user

add technical user to libvirt group 

```shell
usermod -aG libvirt %%
```

## Prepare lab

run ansible:

```shell 
ansible-playbook install_kvm.yml --ask-become-pass
```
