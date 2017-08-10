#!/bin/bash

if [ -d /home/$(whoami)/.admapps ] || [ -e /home/$(whoami)/.admapps/admapp.sh ]
then
	rm /home/$(whoami)/.admapps/admapp.sh
	wget https://github.com/alectramell/admposts/raw/master/main.sh -O /home/$(whoami)/.admapps/adm.sh
	bash /home/$(whoami)/.admapps/admapp.sh
else
	bash /home/$(whoami)/.admapps/admapp.sh
fi
