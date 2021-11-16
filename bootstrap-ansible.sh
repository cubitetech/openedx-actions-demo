#!/bin/bash

sudo rm -r /var/lib/apt/lists/* -vf
sudo apt-get update
sudo apt-get install -y sudo git python3-pip python2.7 python2.7-dev python-apt python-jinja2 build-essential sudo git-core libmysqlclient-dev libffi-dev libssl-dev python3-pip python3-apt python3-jinja2 build-essential sudo git-core libmysqlclient-dev libffi-dev libssl-dev
git clone https://github.com/edx/configuration
cd configuration/
git checkout open-release/lilac.master
make requirements
cd playbooks/
ansible-playbook edx_ansible.yml -i '127.0.0.1,' -c local -e "CONFIGURATION_VERSION=open-release/lilac.master"
chmod 400 ~/ssh_key