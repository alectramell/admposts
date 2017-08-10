#!/bin/bash

GETAPP() {

	if [ -e /home/$(whoami)/.admapps/admapp.sh ]
	then
		bash /home/$(whoami)/.admapps/admapp.sh
	else
		mkdir /home/$(whoami)/.admapps
		wget https://github.com/alectramell/admposts/raw/master/main.sh -O /home/$(whoami)/.admapps/admapp.sh
		clear
		sleep 0.5
		clear
		bash /home/$(whoami)/.admapps/admapp.sh
	fi
}

GETAPP
