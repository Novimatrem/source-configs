#!/bin/bash
# steam-machine-too-dark-fix.sh

killall redshift-gtk
killall redshift
pkill redshift
pkill redshift-gtk
clear

while true; do sleep 1s && xgamma -gamma 1.45 && echo "" && echo "" && echo "" && echo "" && echo "" && echo "xgamma -gamma 1.45" && echo ""; done

xgamma -gamma 1.45


