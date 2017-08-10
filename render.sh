#!/bin/bash

clear

USERNAME=$(whoami)
WHEREAMI=$(pwd)

clear

read -p "(ADM) Update Post: " NEWPOST

clear

echo "$NEWPOST" > $(pwd)/post.txt

clear

git add $(pwd)/post.txt

git commit -m "admpost"

git push origin master

clear

echo "..POST UPDATED! (Please allow 5-10 minutes for update to take effect).." | pv -qL 10
