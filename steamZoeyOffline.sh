#!/bin/bash
# steamZoeyOffline.sh

sudo apt install -y steam
sudo snap remove steam
sudo apt install -y firejail

firejail --net=none steam -offlinemode -browser-offline


