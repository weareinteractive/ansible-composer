#!/bin/bash

# define variables
ROLE_NAME=franklinkim.composer

# install dependencies
ansible-galaxy install franklinkim.apt
ansible-galaxy install franklinkim.php5

# create role symnlink
ln -s $(pwd) /usr/share/ansible/roles/$ROLE_NAME

echo 'running playbook'
ansible-playbook -vvvv -i 'localhost,' -c local $(pwd)/tests/main.yml
