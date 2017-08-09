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

	clear
	STATUS=$(curl -s https://raw.githubusercontent.com/alectramell/admposts/master/post.txt)
	clear
	sleep 5
	clear
	echo "${blue}Apollon Data Metrics (AGY): ${reset}$STATUS"
}

clear
