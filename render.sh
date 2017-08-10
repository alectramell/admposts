#!/bin/bash

clear

USERNAME=$(whoami)
WHEREAMI=$(pwd)

clear

NEWPOST=$(zenity --entry --title="Apollon Data Metrics (AGY) Update Post" --text="update:" --width="400")

clear

echo "$NEWPOST" > $(pwd)/post.txt

clear

git add $(pwd)/post.txt

git commit -m "admpost"

git push origin master

clear

echo "..POST UPDATED!.." | pv -qL 10
