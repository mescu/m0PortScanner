#!/bin/bash
#Script created by m0xsc

function scan_ip(){

	clear

	figlet -l m0xsc

	echo "https://twitter.com/m0xsc"

	echo "https://github.com/m0xsc"

	echo

	echo "Port Scanner 1.0"

	chmod 777 m0.sh

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
		
	read -p "Do you want to scan another IP address (y/n):"
	
	read choice

	if [ "$choice" = "y" ]; then

		scan_ip

	fi

}

scan_ip