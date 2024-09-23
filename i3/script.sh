!#/bin/bash
#!/bin/bash

#force resolution on primary monitor
xrandr --output DP-0 --mode 2560x1440

#right position of monitor
xrandr --output DP-0 --right-of HDMI-0

#polybar execution
~/.config/polybar/launch.sh

sleep 5

#picom config file (opacity)
picom  --config ~/.config/picom/picom.conf &

sleep 5

#nvidia fans
sudo nvidia-settings -a '[gpu:0]/GPUFanControlState=1' -a '[fan:0]/GPUTargetFanSpeed=50'

sleep 5

#flameshot startup
/usr/bin/flameshot &

sleep 5

#remove standby etc
xset s off
xset -dpms
