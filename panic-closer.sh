#!/bin/bash
# panic-closer.sh
# to be bound to a key with xbindkeys
# DESIGNED FOR FULLSCREEN @ 2560x1440
# REQUIRES PAUSE ON FOCUS LOSS DISABLED

# deps: wmctrl, xdotool

# Install commands (only ever run once)
: '
killall xbindkeys
touch /home/$(whoami)/.xbindkeysrc
echo '"bash /opt/panic-closer.sh"' >> /home/$(whoami)/.xbindkeysrc
echo -e ' \t F10' >> /home/$(whoami)/.xbindkeysrc
xbindkeys_autostart
xbindkeys
'

# release conflicting activation key
xdotool keyup F10

# name of the game
wmctrl -a "Minecraft"

# Pause menu key
xdotool key Escape

# X,Y of the Disconnect button
xdotool mousemove 1285 610

# Update mouse relatively so the game knows we're there
xdotool mousemove_relative 1 1

# Click
xdotool mousedown 1
xdotool mouseup 1
