#! /bin/bash

dist=`lsb_release -i`
dist=${dist:16}


#install docker compose plugin 
if [[  "$dist" == "CentOS" ]]; then
    sudo yum update
    sudo yum install -y yum-utils
     sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
    sudo yum install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y
    sudo systemctl start docker
    sudo docker --version
    sudo yum install docker-compose-plugin
#install on ubuntu 
elif [[ "$dist" == "Debian" || "$dist" == "Ubuntu"  ]]; then	
    sudo apt-get update
    sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
    sudo mkdir -p /etc/apt/keyrings
    curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
    echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
    $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y
    sudo docker --version
    sudo apt-get install docker-compose-plugin
fi 

#install worpress 
mkdir ./my_wordpress/
cd ./my_wordpress/
touch docker-compose.yml
sudo apt install wget
wget https://raw.githubusercontent.com/youssefmagdy1/devOps_training/master/session_2/docker-compose.yml -O  docker-compose.yml
docker-compose up -d 

