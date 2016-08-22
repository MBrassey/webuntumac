#!/bin/bash
export DISPLAY=:1
Xvfb :1 -screen 0 1600x900x16 &
sleep 5
echo "feh --bg-fill /var/www/launch/ubuntu_bg.png" >> /etc/xdg/openbox/autostart &&
openbox-session&
x11vnc -display :1 -nopw -listen localhost -xkb -ncache 10 -ncache_cr -forever &
/usr/local/bin/websocketd --port=8010 --staticdir=/var/www/web-vmstats/web /usr/bin/vmstat -n 1 &
cd /root/noVNC && ln -s vnc_auto.html index.html && ./utils/launch.sh --vnc localhost:5900

