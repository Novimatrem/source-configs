#!/bin/bash
# steam-machine-too-dark-fix.sh

killall redshift-gtk
killall redshift
pkill redshift
pkill redshift-gtk
clear

# yes while the sleep 0s here wastes performance, it is required due to bugs.

while true; do sleep 0s && xgamma -gamma 1.45 && echo "" && echo "" && echo "" && echo "" && echo "" && echo "xgamma -gamma 1.45" && echo ""; done

xgamma -gamma 1.45


