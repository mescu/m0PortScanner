#!/bin/bash
#Script created by m0xsc

clear

figlet -l m0xsc

echo "https://twitter.com/m0xsc"

echo "https://github.com/m0xsc"

echo "Port Scanner 1.0"

function install_nmap() {

	echo	

	echo "Do you have Nmap installed? [y/n]: "

	read truenmap

	if [ "$truenmap" = "y" ]; then 

		echo "Nmap is already installed"

	fi

	if [ "$truenmap" = "n" ]; then

		echo "Nmap will be installed right now..."

		echo

		sudo apt-get update

		sudo apt-get install nmap

	fi
}

install_nmap

function scan_ip() {

	echo

	echo "Enter the IP address you want to scan: "

	read ip

	sleep 1

	echo 

	echo "This will take 30 seconds"

	sleep 1

	echo "Plz wait! :)"

	sleep 1

	echo "Scanning ports from ip $ip" 

	echo 

	nmap -v $ip | grep "Discovered open port"

	sleep 30
		
	read -p "Do you want to scan another IP address (y/n):" choice
	
	if [ "$choice" = "y" ]; then

		scan_ip

	else

		exit 0

	fi

}

scan_ip
