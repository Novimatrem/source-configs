#!/bin/bash
# no-steam-for-now-ultimate-v1.sh
clear
read -p "This script will delete data without asking. Only run this script it you want Steam gone. Press [Enter] key to start..."
clear
echo ""
echo "no-steam-for-now-ultimate.sh"
echo ""
echo "Needs your Linux user password once (if prompted):"
cd /
echo ""
cd home

rm -rf /home/$(whoami)/.steampath
rm -rf /home/$(whoami)/.steampid
rm -rf /home/$(whoami)/.steam/steam.pid
rm -rf /home/$(whoami)/.steam/steam.token

rm -rf /tmp/to-delete.txt

grep -rlw "steam://*" /home/$(whoami)/.local/share/applications > /tmp/to-delete.txt

cat /tmp/to-delete.txt | while read f
do
 rm "$f"
done

rm -rf /tmp/to-delete.txt

sudo find -iname "*steam*" | grep -v HDD_0 | grep -v HDD_1 | grep -v share | grep -v Dropbox | grep -v PlayOnLinux | grep -v appstream | grep -v Downloads | grep -v firefox | grep -v Permission | grep -v autocloud | grep -v headers | grep -v kernel | grep -v udev | grep -v hid | grep -v apparmor | grep -v upower | grep -v Working | grep -v curseforge | grep -v Hidamari | grep -v ATLauncher | grep -v snap-steam | grep -v dists | grep -v list.d | grep -v multiverse | grep -v .list | grep -v .postrm | grep -v usb-Valve | grep -v yt-dlp | grep -v steam-install-notify | grep -v pipe | grep zoeymeowy
echo ""
sudo apt remove -y steam
sudo apt remove -y steam-launcher
sudo apt remove -y steam-libs-i386
sudo apt remove -y steam-libs-amd64
sudo apt remove -y steam*
sudo rm -rf /usr/lib/steam
sleep 0.25s && sleep 0.01s && echo "" && while true; do sleep 0.01s && echo "" && killall steam && pkill steam && killall steam && pkill steam && killall steamwebhelper && pkill steamwebhelper && sleep 0.01s && sleep 0.25s; done
sudo apt remove -y steam
sudo apt remove -y steam-launcher
sudo apt remove -y steam-libs-i386
sudo apt remove -y steam-libs-amd64
sudo apt remove -y steam*
sudo rm -rf /usr/lib/steam
# EOF
