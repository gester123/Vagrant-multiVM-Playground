#!/bin/bash

## !IMPORTANT ##
#
## This script is tested only in the generic/ubuntu2204 Vagrant box
## If you use a different version of Ubuntu or a different Ubuntu Vagrant box test this again
#


echo "[Task 1] python3 dependencies for test application"

sudo apt install python3 python3-pip -y
pip3 install flask


echo "------------------------------------------------------------------------------------------"
echo "------------------------------------------------------------------------------------------"
echo "------------------------------------------------------------------------------------------"
echo "------------------------------------------------------------------------------------------"
echo "------------------------------------------------------------------------------------------"
echo "---------------------------------do the following manually--------------------------------"

echo ""
echo "[Task 2] run test application"
echo ""
echo ""
echo "Open a new terminal and run"
echo "vagrant ssh"
echo "python3 /vagrant_data/application/app.py"
#nohup python3 /vagrant_data/application/app.py &

#sleep 30  
#echo "^C"

echo "[Task 3] test the application"
echo ""
echo ""
echo "Open a new vagrant ssh terminal and run"
echo ""
echo ""
echo "curl localhost:5000"
echo ""
echo ""
echo "[Task 4] Open Blowser with the server IP"
echo ""
echo "Look for the IP address of your VM below"
echo ""
ip add
echo ""
echo ""
echo "------------------------------------------------------------------------------------------"
echo "------------------------------------------------------------------------------------------"
echo "------------------------------------------------------------------------------------------"
echo "------------------------------------------------------------------------------------------"
echo "---------------------------------Your Docker and python ----------------------------------"
echo "----------------------------------environment is ready------------------------------------"


EOF
