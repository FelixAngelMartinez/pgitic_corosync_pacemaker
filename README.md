# pgitic_corosync_pacemaker
Project for the subject called Planing and Management of ITC of the Master's degree in Informatics Engenieering. In this project has been automated the provision of 3 virtual machines for **high disponibility** using:<br />
* **Ansible**
* **Vagrant**
* **Corosync**
* **Pacemaker**
.<br />This guide has been made to execute it on **Ubuntu 18.04 LTS**.<br />
# Prerequisites
## Ansible installation:
[Official documentation of Ansible's installation](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#)
```
$ sudo apt install software-properties-common
$ sudo apt-add-repository --yes --update ppa:ansible/ansible
$ sudo apt install -y ansible
$ ansible --version
```
## Vagrant installation:
[Official documentation of Vagrant's installation](https://www.vagrantup.com/docs/installation)
```
$ wget https://releases.hashicorp.com/vagrant/2.2.7/vagrant_2.2.7_x86_64.deb
$ sudo dpkg -i vagrant_2.2.7_x86_64.deb
$ vagrant --version
```
## VirtualBox installation:
[Official documentation of VBox's installation](https://www.virtualbox.org/wiki/Documentation)
```
$ wget https://download.virtualbox.org/virtualbox/6.1.4/virtualbox-6.1_6.1.4-136177~Ubuntu~eoan_amd64.deb
$ sudo dpkg -i virtualbox-6.1_6.1.4-136177~Ubuntu~eoan_amd64.deb
$ virtualbox
```
# Execution
**Provision** virtual machines:
```
$ vagrant up --destroy-on-error
```
**Connection** to virtual machines:
_Nodes_:<br />
* nodo1 
* nodo2, nodo3 ...
You can specified it in the Vagrantfile, in the var N_Machines.
```
$ vagrant ssh <node>
```
**Stop** virtual machines:
```
$ vagrant halt
```
**Destroy** virtual machines:
```
$ vagrant destroy -f --parallel
```


## Liscense:
Project under [LICENSE.md](LICENSE.md)

---
_This project has been made by:_
* **Félix Ángel Martínez Muela** - [Félix Ángel Martínez](https://github.com/FelixAngelMartinez)
* **Miguel de la Cal Bravo** - [Miguel de la Cal Bravo](https://gitlab.com/miguelcal97)
