#!/bin/bash
termux-x11 :0 &
X11_PID=$!
sleep 2
DISPLAY=:0 openbox &
sleep 1
cd ~/chenard/linux
DISPLAY=:0 xboard -fcp ./xchenard -size medium -x 0 -y 0 -oneClickMove true -showButtonBar true
pkill -9 openbox
kill -9 $X11_PID
