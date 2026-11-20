#!/data/data/com.termux/files/usr/bin/bash
pkill -9 xboard openbox termux-x11 2>/dev/null
termux-x11 :0 &
X11_PID=$!
sleep 2
DISPLAY=:0 openbox &
sleep 1
cd ~/chenard/linux
LANG=de_DE.UTF-8 LANGUAGE=de DISPLAY=:0 xboard -fcp ./xchenard -size medium -x 0 -y 0 -oneClickMove true -showButtonBar true
pkill -9 openbox
kill -9 $X11_PID
