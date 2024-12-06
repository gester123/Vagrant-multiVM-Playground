#!/bin/bash

## !IMPORTANT ##
#
## This script is tested only in the generic/ubuntu2204 Vagrant box
## If you use a different version of Ubuntu or a different Ubuntu Vagrant box test this again
#


echo "[TASK A] Update /etc/hosts file"
cat >>/etc/hosts<<EOF
172.16.16.100   kali.example.com     kali
172.16.16.101   windows1.example.com    windows1
172.16.16.102   windows2.example.com    windows2
EOF
