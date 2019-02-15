#!/bin/bash
echo "Script for update AWX"
cd /root/awx
echo "Update git"
git pull origin
cd /root/awx/installer/
echo "Docker stop"
systemctl stop docker
echo "Update AWX"
ansible-playbook -i inventory install.yml
