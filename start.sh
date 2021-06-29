#!/bin/sh

# Create application containing entire X display for testing
Xephyr -ac -screen 1280x720 -br -reset -terminate 2> /dev/null :1 &
DISPLAY=:1

# Gotta wait a bit before running wm idk why
sleep 1

echo Starting tinywm

# start a terminal
# as this is on display :1, it will appear in tinywm

st &
./build/tinywm-"$1"
