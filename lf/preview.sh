#!/bin/bash

 
# sleep 1
# pkill nsxiv
# sleep 1
test $(echo $1 | grep '.jpg') && 
echo "$1" >> ~/look.txt
nsxiv --no-bar -s F -e  $(xdotool getactivewindow) $1 --geometry '500x500-40+10' &
sleep 0.5
pkill nsxiv
