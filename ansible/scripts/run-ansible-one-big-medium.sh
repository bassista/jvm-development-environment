#!/bin/bash

# we have to do this in case we are running under Windows
cp -r /vagrant/ansible /tmp
chmod -x /tmp/ansible/*.ini

mkdir -p /opt/git
ansible-pull --checkout master --directory /opt/ansible-pull --inventory-file=/tmp/ansible/one-medium-box.ini  --module-name=git  --only-if-changed --url=https://github.com/kurron/ansible-pull.git --verbose playbook.yml
