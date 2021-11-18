#!/bin/bash

sudo rm -r /var/lib/apt/lists/* -vf
sudo DEBIAN_FRONTEND=noninteractive apt-get update -y
sudo DEBIAN_FRONTEND=noninteractive apt-get upgrade -y
wget https://raw.githubusercontent.com/cubiteDevops/do-edx-configs/main/ansible-bootstrap.sh -O - | sudo bash