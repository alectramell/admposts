#!/bin/bash

clear

green=$(tput setaf 2)
red=$(tput setaf 1)
gold=$(tput setaf 3)
blue=$(tput setaf 6)
reset=$(tput sgr0)

clear

STATUS=$(curl -s https://raw.githubusercontent.com/alectramell/admposts/master/post.txt)

clear

UPDATE() {

	if [ -d /home/$(whoami)/.admicons ] || [ -e /home/$(whoami)/.admicons/adm.svg ]
	then
		clear
		rm /home/$(whoami)/.admicons/adm.svg
		clear
		wget https://raw.githubusercontent.com/alectramell/admposts/master/icon2.svg -O /home/$(whoami)/.admicons/adm.svg
		clear
	else
		mkdir /home/$(whoami)/.admicons
		clear
		wget https://raw.githubusercontent.com/alectramell/admposts/master/icon2.svg -O /home/$(whoami)/.admicons/adm.svg
		clear

	fi

	clear

	STATUS=$(curl -s https://raw.githubusercontent.com/alectramell/admposts/master/post.txt)
	clear
	sleep 5
	clear
	echo "${blue}Apollon Data Metrics (AGY): ${reset}$STATUS"
	notify-send --urgency="critical" --icon="/home/$(whoami)/.admicons/adm.svg" "$STATUS"
}

clear
