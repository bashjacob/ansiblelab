#!/bin/bash

#Installing ansible
apt update && apt upgrade -y
apt install -y software-properties-common
add-apt-repository --yes --update ppa:ansible/ansible
apt install -y ansible

#Setting up inventory file
mv ./inventory /etc/ansible/hosts

