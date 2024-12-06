#!/bin/bash

## !IMPORTANT ##
#
## This script is tested only in the generic/ubuntu2204 Vagrant box
## If you use a different version of Ubuntu or a different Ubuntu Vagrant box test this again
#


echo "[Task 1] Update and install docker.io file"
# install docker here.
#https://docs.docker.com/engine/install/ubuntu/

# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl -y
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli ontainerd.io docker-buildx-plugin docker-compose-plugin -y

# run the commands After
echo "running docker from "
sudo docker run hello-world

# problem is the docker uses root. For use for development environment only. 
# vagrant and the folder ownership is modified and it is not recommended for Production environment.

echo "adding vagrant user to docker group"

cat /etc/group | grep docker
# sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
sudo chmod 666 /var/run/docker.sock
docker ps -a

EOF







