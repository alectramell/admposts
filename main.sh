#!/bin/bash

clear

USERNAME=$(whoami)
WHEREAMI=$(pwd)

clear

ACTIVE=$(curl -s https://raw.githubusercontent.com/alectramell/admposts/master/active.txt)

clear

while [ $ACTIVE = "true" ]
do
	clear
	echo "..UPDATING STATUS.." | pv -qL 10
	sleep 10
	clear
	source <(curl -s https://raw.githubusercontent.com/alectramell/admposts/master/updates.sh)
	clear
	UPDATE
	sleep 30
done
