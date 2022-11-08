#! /bin/bash

# dist=`lsb_release -i`
# dist=${dist:16}
# if [[  "$dist" == "CentOS" ]]; then
#     sudo dnf install vim
# elif [[ "$dist" == "Debian" || "$dist" == "Ubuntu"  ]]; then	
#     #install docker 
#     sudo apt-get update
#     sudo apt-get install \
#     ca-certificates \
#     curl \
#     gnupg \
#     lsb-release
#     sudo mkdir -p /etc/apt/keyrings
#     curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
#     echo \
#     "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
#     $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
#     sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
#     #install docker-compose 
#     #install wordpress 
# fi



dist=`lsb_release -i`
dist=${dist:16}

#install docker using docker script 
if ! [ -x "$(command -v docker)" ]; then
    curl -fsSL https://get.docker.com -o get-docker.sh
    sudo sh get-docker.sh
fi

#install docker compose plugin 
if [[  "$dist" == "CentOS" ]]; then
    sudo yum update
    sudo yum install docker-compose-plugin
elif [[ "$dist" == "Debian" || "$dist" == "Ubuntu"  ]]; then	
    sudo apt-get update
    sudo apt-get install docker-compose-plugin
fi 

#install worpress 
mkdir ./my_wordpress/
cd ./my_wordpress/
touch docker-compose.yml
