#! /bin/bash

#Linux 
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	dist=`lsb_release -i`
	dist=${dist:16}
	echo "your OS is: $dist"
	if [[ "$dist" == "Arch Linux" || "$dist" == "Manjaro" ]]; then 
		sudo pacman -S vim 
	elif [[ "$dist" == "RHEL" || "$dist" == "CentOS" || "$dist" == "Fedora" ]]; then
		sudo dnf install vim
	elif [[ "$dist" == "OpenSuse" ]]; then
		sudo zypper install vim
	elif [[ "$dist" == "Debian" || "$dist" == "Ubuntu" || "$dist" == "Mint" ]]; then	
		sudo apt install vim 
	fi

#Mac OS
elif [[ "$OSTYPE" == "darwin"* ]]; then
	echo "your OS is: MAC"
	brew install vim

#Windows
elif [[ "$OSTYPE" == "msys" ]]; then
	echo "your OS is: Windows"
	pwd
	
#freeBSD
elif [[ "$OSTYPE" == "freebsd"* ]]; then
	echo "your OS is: freebsd"
    pkg install vim  
else
        echo "cann't recognizw OS"
fi

vim --version
