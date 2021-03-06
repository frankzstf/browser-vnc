#!/bin/bash

# initialize vnc
/usr/bin/vncserver
/usr/bin/vncserver -kill :1
rm /tmp/.X11-unix/X*
rm /tmp/.X*-lock


# add lxdepanel into xstartup
echo "lxpanel &" >> ~/.vnc/xstartup

#run vncserver in background
/usr/bin/vncserver :1 -geometry 1440x900& 

cp /opt/noVNC/vnc_auto.html /opt/noVNC/index.html

#run novnc
/opt/noVNC/utils/launch.sh --vnc localhost:5901
